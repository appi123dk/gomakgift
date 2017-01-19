class CreateSimples < ActiveRecord::Migration
  def change
    create_table :simples do |t|
    	# simple 진단서 : 인쇄디자인, 패키지 디자인, 앱디자인, 웹 광고디자
    	t.belongs_to :client, index: true
    	t.string :package_name
    	t.string :step_2
    	t.text :step_3
      t.timestamps null: false
    end
  end
end
