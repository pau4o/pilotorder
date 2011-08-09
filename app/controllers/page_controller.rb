class PageController < ApplicationController
  layout "welcome"
  before_filter :preload_shared_variables
  
  private

  def preload_shared_variables
    if current_page?(url_for(:controller => 'page', :action => 'welcome'))
      @quote = Quote.random()
    end
  end

end
