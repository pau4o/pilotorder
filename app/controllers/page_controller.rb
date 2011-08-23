class PageController < ApplicationController
  layout "welcome"
  before_filter :preload_shared_variables
  

  def new_inquery
    @question = Question.new
  end

  private

  def preload_shared_variables
    if action_name == "welcome"
      @quote = Quote.random()
    end
  end

end
