class Agent < ActiveRecord::Base
  attr_accessible :name, :contacts, :status, :editor_id
end
