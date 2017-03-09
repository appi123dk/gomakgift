class AddRemarkToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :remark, :string                      # 특이사항
  	add_column :products, :composition_image, :string           # 제품구성이미지
  	add_column :products, :print_image, :string                 # 인쇄설명이미지
  	add_column :products, :package_image, :string               # 패키지설명이미지
  	add_column :products, :product_composition, :string         # 제품구성
  end
end
