class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.datetime :last_request_at
      t.string :last_request_url
    end
  end

  def self.down
    remove_column :users, :last_request_at
    remove_column :users, :last_request_url
  end
end
