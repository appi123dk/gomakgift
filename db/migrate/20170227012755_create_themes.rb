class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
    	t.belongs_to :supplier, index: true    # 공급업체DB 연동
    	t.string :middle_banner                # 미드배너 이미지
    	t.string :big_banner                   # 기획전 화면 배너이미지
    	t.string :detail                       # 스토리 디테일 이미지
    	t.boolean :is_display, default: true   # 노출여부
    	t.integer :order                       # 게시순서
      t.timestamps null: false
    end
  end
end
