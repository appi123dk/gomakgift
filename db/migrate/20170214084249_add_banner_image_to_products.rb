class AddBannerImageToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :product_banner_image, :string             # 상품 배너이미지
  	add_column :products, :category, :string                         # 상품 카테고리
  end
end
