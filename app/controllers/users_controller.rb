class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  

  layout "admin"

  before_filter :find_user, 
    :only => [:profile, 
              :edit_password,   :update_password, 
              :edit_email,      :update_email ]
  
  
  def troubleshooting
    # Render troubleshooting.html.erb
    render :layout => 'welcome'
  end

  def clueless
    # These users are beyond our automated help...
    render :layout => 'welcome'
  end

  
  def edit_password
    if ! @user.not_using_openid?
      flash[:notice] = t("Не може да променяте електронния си адрес. Вие ползвате OpenID!")
      redirect_to :back
    end
    
    # render edit_password.html.erb
  end
  
  def update_password    
    if ! @user.not_using_openid?
      flash[:notice] = t("Не може да променяте електронния си адрес. Вие ползвате OpenID!")
      redirect_to :back
    end
    
    if current_user == @user
      current_password, new_password, new_password_confirmation = params[:current_password], params[:new_password], params[:new_password_confirmation]
      
      if @user.encrypt(current_password) == @user.crypted_password
        if new_password == new_password_confirmation
          if new_password.blank? || new_password_confirmation.blank?
            flash[:error] = t("Не може да използвате празна парола.")
            redirect_to edit_password_user_url(@user)
          else
            @user.password = new_password
            @user.password_confirmation = new_password_confirmation
            @user.save
            flash[:notice] = t("Паролата беше променена.")
            redirect_to profile_url(@user)
          end
        else
          flash[:error] = t("Паролата и нейното потвърждение не съвпадат.")
          redirect_to edit_password_user_url(@user)
        end
      else
        flash[:error] = t("Текущата парола е грешна. Вашата парола не е променена.")
        redirect_to edit_password_user_url(@user)
      end
    else
      flash[:error] = t("Не може да променяте пароли на други потребители!")
      redirect_to edit_password_user_url(@user)
    end
  end
  
  def edit_email
    if ! @user.not_using_openid?
      flash[:notice] = t("Не може да променяте електронния си адрес. Вие ползвате OpenID!")
      redirect_to :back
    end
    
    # render edit_email.html.erb
  end
  
  def update_email
    if ! @user.not_using_openid?
      flash[:notice] = t("Не може да променяте електронния си адрес. Вие ползвате OpenID!")
      redirect_to :back
    end
    
    if current_user == @user
      if @user.update_attributes(:email => params[:email])
        flash[:notice] = t("Вашият електронен адрес беше променен.")
        redirect_to profile_url(@user)
      else
        flash[:error] = t("Вашият електронен адрес не може да бъде променен.")
        redirect_to edit_email_user_url(@user)
      end
    else
      flash[:error] = t("Не може да променяте адреси на други потребители!")
      redirect_to edit_email_user_url(@user)
    end
  end  
  
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    current_user.delete!
    
    logout_killing_session!
    
    flash[:notice] = t("Вашият акаунт беше премахнат.")
    redirect_back_or_default(root_path)
  end  
  
  protected

  def find_user
    @user = User.find(params[:id])
  end

  def create_new_user(attributes)
    @user = User.new(attributes)
    if @user && @user.valid?
      if @user.not_using_openid?
        @user.register!
      else
        @user.register_openid!
      end
    end
    
    if @user.errors.empty?
      successful_creation(@user)
    else
      failed_creation
    end
  end
  
end
