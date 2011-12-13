class Tug < ActiveRecord::Base
  attr_accessible :name, :editor_id
  validates_uniqueness_of :name 
end
