class Area < ActiveRecord::Base
  attr_accessible :name, :data, :editable, :faraway, :mapname, :scale_ppm, :iconname, :editor_id
end
