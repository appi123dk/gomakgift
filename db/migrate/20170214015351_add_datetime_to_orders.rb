class AddDatetimeToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :datetime_payed, :datetime       # 결제일자
  	add_column :orders, :datetime_designed, :datetime    # 시안등록일자
  	add_column :orders, :datetime_confirmed, :datetime   # 시안확정일자
  	add_column :orders, :datetime_ordered, :datetime     # 발주일자
  	add_column :orders, :datetime_finished, :datetime    # 배송완료일자
  	add_column :orders, :datetime_issued, :datetime      # 증빙서류발급일자
  	add_column :orders, :datetime_delivered, :datetime   # 배송등록일자
  end
end
