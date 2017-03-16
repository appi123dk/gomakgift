class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
    	t.belongs_to :order, index: true              # 주문 DB 연동
    	t.string :file_name                           # 파일명
    	t.string :file_url                            # 파일주소
      t.timestamps null: false
    end
  end
end
