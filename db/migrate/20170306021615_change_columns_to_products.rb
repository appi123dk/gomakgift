class ChangeColumnsToProducts < ActiveRecord::Migration
  def change
  	change_column :products, :detail, :text
  end
end
