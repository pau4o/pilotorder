class Admin::CriteriaController < ApplicationController
  def index
    @criteria = Criteria.all
  end

  def show
    @criteria = Criteria.find(params[:id])
  end

  def new
    @criteria = Criteria.new
  end

  def create
    @criteria = Criteria.new(params[:criteria])
    if @criteria.save
      redirect_to [:admin, @criteria], :notice => "Successfully created criteria."
    else
      render :action => 'new'
    end
  end

  def edit
    @criteria = Criteria.find(params[:id])
  end

  def update
    @criteria = Criteria.find(params[:id])
    if @criteria.update_attributes(params[:criteria])
      redirect_to [:admin, @criteria], :notice  => "Successfully updated criteria."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @criteria = Criteria.find(params[:id])
    @criteria.destroy
    redirect_to admin_criteria_url, :notice => "Successfully destroyed criteria."
  end
end
