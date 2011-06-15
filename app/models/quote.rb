class Quote < ActiveRecord::Base
  attr_accessible :message, :author
  
  def self.random
    offset = rand(Quote.count)
    Quote.first(:offset => offset)
  end
end
