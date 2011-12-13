class CreateAssesmentCards < ActiveRecord::Migration
  def self.up
    create_table :assesment_cards do |t|
      t.integer :card_id
      t.boolean :driver, :default => false
      t.text :comment
      t.integer :editor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :assesment_cards
  end
end
