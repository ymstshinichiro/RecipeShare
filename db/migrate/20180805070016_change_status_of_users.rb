class ChangeStatusOfUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_column_null :users, :email, false
    change_column_null :users, :name, false
    change_column_null :users, :password_digest, false

    add_index :users, :email, unique: true
  end

  def self.up
    change_column_null :users, :email, true
    change_column_null :users, :name, true
    change_column_null :users, :password_digest, true
  end
end
