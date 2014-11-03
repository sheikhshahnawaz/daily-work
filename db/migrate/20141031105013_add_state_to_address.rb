class AddStateToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :state, :string
    add_column :addresses, :city, :string
    add_column :addresses, :area, :string
    add_column :addresses, :pin_code, :integer
  end
end
