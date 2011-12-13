class Criteria < ActiveRecord::Base
  set_table_name :criterias
  attr_accessible :name, :alert, :number, :editor_id
end
