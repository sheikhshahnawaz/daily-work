class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :profile
      t.integer :user_id

      t.timestamps
    end
  end
end
