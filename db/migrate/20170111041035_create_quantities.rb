class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
    	t.integer :qty_max # 최대수량
    	t.integer :qty_1
    	t.integer :qty_2
    	t.integer :qty_3
    	t.integer :qty_4
    	t.integer :qty_5
    	t.integer :qty_6, default: 0
      t.timestamps null: false
    end
  end
end
