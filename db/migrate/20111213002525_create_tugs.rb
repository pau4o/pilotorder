class CreateTugs < ActiveRecord::Migration
  def self.up
    create_table :tugs do |t|
      t.string :name
      t.integer :editor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tugs
  end
end
