class Place < ActiveRecord::Base
  attr_accessible :name, :mooring, :data, :imonumber, :ship_id, :log_book_id, :arrival, :leftanchor, :la_keys, :rightanchor, :ra_keys, :board, :x_center, :y_center, :bearing, :editor_id
end
