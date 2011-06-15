class PageController < ApplicationController
  layout "welcome"
  before_filter :preload_shared_variables
  
  private

  def preload_shared_variables
    @quote = Quote.random()
  end

end
