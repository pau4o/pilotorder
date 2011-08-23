class CreateFlags < ActiveRecord::Migration
  def self.up
    create_table :flags do |t|
      t.string :name
      t.string :alpha2, :size => 2
      t.string :tld, :size => 5

      t.timestamps
    end
  end

  def self.down
    drop_table :flags
  end
end
