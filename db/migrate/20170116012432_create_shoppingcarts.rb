class CreateShoppingcarts < ActiveRecord::Migration
  def change
    create_table :shoppingcarts do |t|
    	t.belongs_to :product, index: true              # 제품 DB 연동
    	t.belongs_to :order, index: true                # 주문 DB 연동
    	t.integer :qty                                  # 주문 수량
    	t.boolean :is_cart                              # 장바구니 여부
      t.string :ip_address                            # 장바구니 ip 주소
    	t.integer :total_price                          # 제품 주문 가격
      t.timestamps null: false
    end
  end
end
