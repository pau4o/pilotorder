class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(params[:ship])
    if @ship.save
      redirect_to @ship, :notice => "Successfully created ship."
    else
      render :action => 'new'
    end
  end

  def edit
    @ship = Ship.find(params[:id])
  end

  def update
    @ship = Ship.find(params[:id])
    if @ship.update_attributes(params[:ship])
      redirect_to @ship, :notice  => "Successfully updated ship."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy
    redirect_to ships_url, :notice => "Successfully destroyed ship."
  end
end
