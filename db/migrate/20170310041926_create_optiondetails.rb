class CreateOptiondetails < ActiveRecord::Migration
  def change
    create_table :optiondetails do |t|
    	t.belongs_to :option, index: true
    	t.string :option_content			# 옵션내용
    	t.integer :additional_price   # 추가가격
      t.timestamps null: false
    end
  end
end
