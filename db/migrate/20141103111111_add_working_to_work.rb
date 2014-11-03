class AddWorkingToWork < ActiveRecord::Migration
  def change
    add_column :works, :holiday_day, :string
    add_column :works, :holiday_time, :string
  end
end
