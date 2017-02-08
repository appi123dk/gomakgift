class AddDisplayOrderToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :display_order, :integer, default: 0
  	add_column :products, :supply_price, :integer, default: 0
  	add_column :products, :delivery_cost, :integer, default: 0
  	add_column :products, :min_qty, :integer, default: 0
  	add_column :products, :brand_name, :string
  	add_column :products, :print_package_cost, :integer, default: 0
  	add_reference :products, :supplier, index: true, foreign_key: true
  end
end
