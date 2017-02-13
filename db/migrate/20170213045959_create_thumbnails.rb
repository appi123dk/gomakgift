class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
    	t.belongs_to :product, index: true   # 제품DB 연동
    	t.string :img_url                    # 썸네일 이미지 주소
      t.timestamps null: false
    end
  end
end
