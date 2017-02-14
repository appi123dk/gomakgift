class CreateRecommendAreas < ActiveRecord::Migration
  def change
    create_table :recommend_areas do |t|
    	t.belongs_to :product, index: true   # 제품 id
    	t.string :img_url                     # 이미지
    	t.string :title                       # 타이틀
    	t.string :subtitle                    # 서브타이틀
    	t.boolean :is_display, default: true	# 노출여부
    	t.integer :order											# 순서
      t.timestamps null: false
    end
  end
end
