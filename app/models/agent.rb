class Agent < ActiveRecord::Base
  attr_accessible :name, :contacts, :status, :editor_id
  validates_presence_of :name
end
