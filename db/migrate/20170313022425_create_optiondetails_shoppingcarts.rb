class CreateOptiondetailsShoppingcarts < ActiveRecord::Migration
  def change
    create_table :optiondetails_shoppingcarts do |t|
			t.belongs_to :shoppingcart, index: true    # 쇼핑카트 DB연동
    	t.belongs_to :optiondetail, index: true    # 옵션세부사항 DB연동
      t.timestamps null: false
    end
  end
end
