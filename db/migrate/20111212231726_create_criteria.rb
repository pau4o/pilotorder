class CreateCriteria < ActiveRecord::Migration
  def self.up
    create_table :criterias do |t|
      t.string :name
      t.boolean :alert, :default => false
      t.integer :number
      t.integer :editor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :criterias
  end
end
