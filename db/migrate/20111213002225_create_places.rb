class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string    :name
      t.boolean   :mooring
      t.string    :data
      t.string    :imonumber,  :limit   => 16
      t.integer   :ship_id
      t.integer   :log_book_id
      t.timestamp :arrival
      t.boolean   :leftanchor
      t.integer   :la_keys,    :default => 0
      t.boolean   :rightanchor
      t.integer   :ra_keys,    :default => 0
      t.boolean   :board
      t.integer   :x_center,   :default => 0
      t.integer   :y_center,   :default => 0
      t.integer   :bearing
      t.integer   :editor_id
      t.string    :code
      t.string    :psn
      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
