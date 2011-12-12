class CreateAgents < ActiveRecord::Migration
  def self.up
    create_table :agents do |t|
      t.string :name
      t.text :contacts
      t.string :status, :default => 'active'
      t.integer :editor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :agents
  end
end
