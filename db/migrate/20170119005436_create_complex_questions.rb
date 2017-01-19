class CreateComplexQuestions < ActiveRecord::Migration
  def change
    create_table :complex_questions do |t|
    	# 복합진단서 : 로고디자인, 웹디자인
    	t.belongs_to :client, index: true
      t.string :package_name
    	t.string :step_2, array: true, default: []
    	t.string :step_3, array: true, default: []
    	t.text :step_4
    	t.string :step_5
    	t.text :step_6

      t.timestamps null: false
    end
  end
end
