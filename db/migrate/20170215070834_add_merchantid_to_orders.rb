class AddMerchantidToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :merchant_uid, :string                         # 상품 uid
  end
end
