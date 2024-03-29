class Admin::AreasController < Admin::BaseController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(params[:area])
    if @area.save
      redirect_to [:admin, @area], :notice => "Successfully created area."
    else
      render :action => 'new'
    end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
    if @area.update_attributes(params[:area])
      redirect_to [:admin, @area], :notice  => "Successfully updated area."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy
    redirect_to admin_areas_url, :notice => "Successfully destroyed area."
  end
end
