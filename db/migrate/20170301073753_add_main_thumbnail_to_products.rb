class AddMainThumbnailToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :product_thumb, :string         # 상품 메인페이지 썸네일 이미지
  end
end
