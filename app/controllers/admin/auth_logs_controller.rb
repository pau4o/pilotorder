class Admin::AuthLogsController < ApplicationController
  def index
    @auth_logs = AuthLog.all
  end

  def show
    @auth_log = AuthLog.find(params[:id])
  end

  def new
    @auth_log = AuthLog.new
  end

  def create
    @auth_log = AuthLog.new(params[:auth_log])
    if @auth_log.save
      redirect_to [:admin, @auth_log], :notice => "Successfully created auth log."
    else
      render :action => 'new'
    end
  end

  def edit
    @auth_log = AuthLog.find(params[:id])
  end

  def update
    @auth_log = AuthLog.find(params[:id])
    if @auth_log.update_attributes(params[:auth_log])
      redirect_to [:admin, @auth_log], :notice  => "Successfully updated auth log."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @auth_log = AuthLog.find(params[:id])
    @auth_log.destroy
    redirect_to admin_auth_logs_url, :notice => "Successfully destroyed auth log."
  end
end
