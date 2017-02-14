class AddCancledToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :is_cancled, :boolean, default: false    # 주문취소여부
  	add_column :orders, :datetime_cancled, :datetime             # 주문취소일자
  	add_column :orders, :datetime_returned, :datetime            # 환불일자
  end
end
