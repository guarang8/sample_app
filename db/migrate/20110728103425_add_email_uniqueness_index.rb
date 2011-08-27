class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :email, :unique => true #table name followed by column name
  end

  def self.down
    remove_index :users, :email
  end
end
