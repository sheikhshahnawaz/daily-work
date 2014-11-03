class AddApproveToUser < ActiveRecord::Migration
  def change
    add_column :users, :approve, :boolean, :default => false
  end
end
