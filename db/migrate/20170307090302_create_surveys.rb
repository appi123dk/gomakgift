class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    	t.string :age													# 나이
    	t.boolean :female											# 여성이면 true
    	t.belongs_to :project, index: true    # 프로젝트 DB연동
      t.timestamps null: false
    end
  end
end
