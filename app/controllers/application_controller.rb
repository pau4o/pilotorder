# encoding: utf-8
class ApplicationController < ActionController::Base
  
  before_filter :set_last_request # helper for devise
  before_filter :prepare_for_mobile
  before_filter :redirect_for_browser_upgrade
  before_filter :log_user
  before_filter :mailer_set_url_options
  before_filter :set_locale
  before_filter :set_gettext_locale # in case of problems it is better of overwrite this gettext method 
  
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

  def set_last_request
    if user_signed_in?
#       current_uri = url_for( :controller => params[:controller], :action => params[:action], :only_path => true)
       current_uri = request.env['PATH_INFO']
       attr = { :last_request_at => Time.now, :last_request_url => current_uri }
       current_user.update_attributes( attr )
    end
  end

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
      logger.info("==>" + current_user.login + ', role:' + current_user.role_symbols.join(", "))
    end
  end

  # workaround for mailer bug ?!?
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end

#   def after_sign_up_path_for(resource)
  def after_inactive_sign_up_path_for(resource)
#   def after_sign_in_path_for(resource)
    logger.info("="*80)
    require 'pp'
    puts "hhoho"
    pp resource
    "http://google.com"
  end
  
  def after_sign_in_path_for(resource)
    logger.info("after_sign_in_path_for: #{current_user.email}")
    admin_root_path
  end

  def after_sign_out_path_for(resource)
    require 'pp'
    pp flash 
    url_for(:controller => :page, :action => "goodbye")
  end

  def set_locale
    #session[:browser_locale] ||= request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    if action_name == "change_lang"
      case I18n.locale
      when :en
        I18n.locale = :bg
      when :bg
        I18n.locale = :en
      end
      session[:locale] = locale # this is needed to set locale in :set_gettext_locale
    end
  end
end
