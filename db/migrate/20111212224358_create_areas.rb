class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :name
      t.text :data
      t.boolean :editable, :default => false
      t.boolean :faraway,  :default => false
      t.string :mapname
      t.float :scale_ppm
      t.string :iconname
      t.integer :editor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
