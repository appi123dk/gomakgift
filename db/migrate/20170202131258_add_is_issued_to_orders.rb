class AddIsIssuedToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :is_issued, :boolean, default: false
  end
end
