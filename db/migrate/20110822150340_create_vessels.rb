class CreateVessels < ActiveRecord::Migration
  def self.up
    create_table :vessels do |t|
      t.string "imonumber" ,  :limit => 16
      t.string "name"
      t.string "callsign"
      t.string "flag"
      t.string "owner"
      t.integer "gt"
      t.decimal "loa"      ,  :precision => 5 ,  :scale => 2
      t.decimal "boa"      ,  :precision => 5 ,  :scale => 2
      t.decimal "draftfwd" ,  :precision => 5 ,  :scale => 2
      t.decimal "aft"      ,  :precision => 5 ,  :scale => 2
      t.decimal "airdraft" ,  :precision => 5 ,  :scale => 2
      t.integer "propelers"
      t.boolean "proptype"
      t.integer "thrusters"
      t.integer "order_id"
      t.integer "editor_id"

      t.timestamps
    end
  end

  def self.down
    drop_table :vessels
  end
end
