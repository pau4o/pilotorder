class CreateForthMen < ActiveRecord::Migration
  def self.up
    create_table :forth_man do |t|
      t.string :imonumber,      :limit => 16
      t.string :name,           :limit => 64
      t.string :callsign,       :limit => 20
      t.string :flag,           :limit => 64
      t.string :owner
      t.integer :gt
      t.decimal :loa,           :precision => 5,   :scale => 2
      t.decimal :boa,           :precision => 5,   :scale => 2
      t.decimal :draftfwd,      :precision => 5,   :scale => 2
      t.decimal :aft,           :precision => 5,   :scale => 2
      t.decimal :airdraft,      :precision => 5,   :scale => 2
      t.integer :propelers
      t.boolean :proptype
      t.integer :trusters
      t.integer :editor_id
      t.boolean :engineop,      :default => true
      t.datetime :approxtime,   :null => false
      t.integer :from_area_id, :default => 0
      t.integer :to_area_id,    :default => 0
      t.integer :conf_by_port,  :default => 0
      t.integer :conf_by_agent, :default => 0
      t.integer :agent_id,      :default => 0
      t.integer :log_book_id,   :default => 0
      t.integer :pilot_id
      t.boolean :accepted,      :default => false
      t.text :comment
      t.boolean :dcargo,        :default => false
      t.string :cargo_descr

      t.timestamps
    end
  end

  def self.down
    drop_table :forth_man
  end
end
