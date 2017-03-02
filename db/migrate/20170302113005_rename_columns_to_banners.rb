class RenameColumnsToBanners < ActiveRecord::Migration
  def change
  	rename_column :banners, :order, :display_order
  	rename_column :recommend_areas, :order, :display_order
  	rename_column :themes, :order, :display_order
  end
end
