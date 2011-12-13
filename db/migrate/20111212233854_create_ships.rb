class CreateShips < ActiveRecord::Migration
  def self.up
    create_table :ships do |t|
      t.string :imonumber,  :limit => 16
      t.string :name,       :limit => 64
      t.string :callsign,   :limit => 20
      t.string :flag,       :limit => 64
      t.string :owner
      t.integer :gt
      t.decimal :loa,       :precision => 5, :scale => 2
      t.decimal :boa,       :precision => 5, :scale => 2
      t.decimal :draftfwd,  :precision => 5, :scale => 2
      t.decimal :aft,       :precision => 5, :scale => 2
      t.decimal :airdraft,  :precision => 5, :scale => 2
      t.integer :propelers
      t.boolean :proptype
      t.integer :trusters
      t.integer :editor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :ships
  end
end
