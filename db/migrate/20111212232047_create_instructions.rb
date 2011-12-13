class CreateInstructions < ActiveRecord::Migration
  def self.up
    create_table :instructions do |t|
      t.timestamp :effective, :null => false
      t.string :subject
      t.text :body
      t.timestamp :due
      t.boolean :canceled
      t.timestamp :cancelation
      t.timestamps
    end
  end

  def self.down
    drop_table :instructions
  end
end
