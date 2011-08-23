class CreateVessels < ActiveRecord::Migration
  def self.up
    create_table :vessels do |t|
      t.string "imonumber" ,  :size => 16
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
      t.integer "editor_id"
      t.integer "propelers"
      t.boolean "proptype"
      t.integer "thrusters"

      t.timestamps
    end
  end

  def self.down
    drop_table :vessels
  end
end
