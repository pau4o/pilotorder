class Admin::PlacesController < Admin::BaseController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params[:place])
    if @place.save
      redirect_to [:admin, @place], :notice => "Successfully created place."
    else
      render :action => 'new'
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(params[:place])
      redirect_to [:admin, @place], :notice  => "Successfully updated place."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to admin_places_url, :notice => "Successfully destroyed place."
  end
end
