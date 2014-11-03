class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :contact_no, :integer
    add_column :users, :role, :string
    add_column :users, :salary, :integer
  end
end
