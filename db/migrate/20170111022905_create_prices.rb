class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
    	t.string :price_name, default: '단가' # 가격옵션 이름 ( 4GB, 8GB 등 사용)
    	t.integer :price_min                 # 최저가
    	t.integer :price_1
    	t.integer :price_2
    	t.integer :price_3
    	t.integer :price_4
    	t.integer :price_5
    	t.integer :price_6, default: 0
      t.timestamps null: false
    end
  end
end
