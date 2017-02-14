class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
    	t.belongs_to :product, index: true  # 제품 id
    	t.string :background_url             # 배경이미지
    	t.string :product_url                # 상품이미지
    	t.boolean :is_display, default: true # 배너영역 게시여부
    	t.boolean :is_left, default: true    # 왼쪽 오른쪽 설정
    	t.integer :order                     # 배너 슬라이드 순서
      t.timestamps null: false
    end
  end
end
