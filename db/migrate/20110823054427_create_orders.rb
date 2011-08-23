class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.datetime :eta_varna
      t.integer :vessel_id
      t.string :country_receiver
      t.string :country_receiver_id
      t.integer :i18n_cruise_number
      t.string :starting_port
      t.string :ending_port
      t.string :maneuver_state, :size => 40
      t.string :maneuver_from
      t.string :maneuver_to
      t.boolean :danger_cargo
      t.string :danger_cargo_filename
      t.string :tug_company
      t.text :requirements
      t.string :payer
      t.boolean :rejected
      t.boolean :published
      t.boolean :draft
      t.boolean :deleted
      t.boolean :accepted
      t.boolean :finished
      t.integer :author_id
      t.string :accepted_by
      t.string :rejected_by
      t.string :finished_by
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
