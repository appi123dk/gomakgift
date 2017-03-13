class CreateOptionsProducts < ActiveRecord::Migration
  def change
    create_table :options_products do |t|
    	t.belongs_to :product, index: true    # 제품 DB연동
    	t.belongs_to :option, index: true     # 옵션 DB연동
      t.timestamps null: false
    end
  end
end
