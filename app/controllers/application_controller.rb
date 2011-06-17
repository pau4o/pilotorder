class ApplicationController < ActionController::Base
  
  before_filter :prepare_for_mobile
  before_filter :redirect_for_browser_upgrade
  before_filter :log_user
  
  helper :all # include all helpers, all the time
  
  # Return the value for a given setting
  def s(identifier)
    Setting.get(identifier)
  end
  helper_method :s
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '9fe6825f97cc334d88925fde5c4808a8'
  
  alias :logged_in? :user_signed_in?
  helper_method :logged_in?

  layout :layout_by_resource  
  def layout_by_resource
    if devise_controller? 
      "login"
    else
      "application"
    end
  end
    
  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end

  def is_user_agent_ok?
    supportedBrowsers = [
      Browser.new("Safari", "3.1.1"),
      Browser.new("Firefox", "2.0.0.14"),
      Browser.new("Internet Explorer", "7.0")
    ]
    user_agent = UserAgent.parse(request.user_agent)
  end

  def redirect_for_browser_upgrade
    redirect_to upgrade_your_browser_path, :status => 505 unless is_user_agent_ok? && ! mobile_device?
  end

  def log_user
    if logged_in?
      logger.info("==>" + current_user.login)
    end
  end

end
