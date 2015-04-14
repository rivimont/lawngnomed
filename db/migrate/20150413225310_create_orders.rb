class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :name
      t.date :morning_of
      t.string :greeting

      t.timestamps null: false
    end
  end
end
