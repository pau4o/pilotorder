class CreateAuthLogs < ActiveRecord::Migration
  def self.up
    create_table :auth_logs do |t|
      t.string :username
      t.string :fullname
      t.timestamps
    end
  end

  def self.down
    drop_table :auth_logs
  end
end
