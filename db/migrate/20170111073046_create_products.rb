class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :title                            # 상품명
    	t.string :subtitle                         # 상품 서브타이틀
    	t.string :detail                           # 상품 상세정보
    	t.string :product_image                    # 상품 이미지 url
    	t.string :product_thumb                    # 상품 썸네일 url
      t.references :price, foreign_key: true     # 가격 DB연결
    	t.references :quantity, foreign_key: true  # 갯수 DB연결
      t.timestamps null: false
    end
  end
end
