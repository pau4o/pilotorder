class RegistrationsController < Devise::RegistrationsController

  def thank_you
  end

  protected
  def after_inactive_sign_up_path_for(resource)
    url_for(:controller => :registrations, :action => :thank_you)
  end
end

