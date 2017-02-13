class AddMainpageTitleToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :mainpage_title, :string
  	add_column :products, :mainpage_story, :text
  	add_column :products, :recommend_festival, :string
  	add_column :products, :explain_package, :string
  	remove_column :products, :product_thumb
  end
end
