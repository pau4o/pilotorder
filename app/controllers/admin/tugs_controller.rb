class Admin::TugsController < Admin::BaseController
  def index
    @tugs = Tug.all
  end

  def show
    @tug = Tug.find(params[:id])
  end

  def new
    @tug = Tug.new
  end

  def create
    @tug = Tug.new(params[:tug])
    if @tug.save
      redirect_to [:admin, @tug], :notice => "Successfully created tug."
    else
      render :action => 'new'
    end
  end

  def edit
    @tug = Tug.find(params[:id])
  end

  def update
    @tug = Tug.find(params[:id])
    if @tug.update_attributes(params[:tug])
      redirect_to [:admin, @tug], :notice  => "Successfully updated tug."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @tug = Tug.find(params[:id])
    @tug.destroy
    redirect_to admin_tugs_url, :notice => "Successfully destroyed tug."
  end
end
