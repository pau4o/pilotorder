class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.datetime :last_request_at
      t.string :last_request_url
      t.string :title
      t.string :status, :default => "disabled"
      t.string :phone
    end
  end

  def self.down
    remove_column :users, :last_request_at
    remove_column :users, :last_request_url
    remove_column :users, :title
    remove_column :users, :status
    remove_column :users, :phone
  end
end
