class AddStreetToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :street_name, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zip_code, :string
  end
end
