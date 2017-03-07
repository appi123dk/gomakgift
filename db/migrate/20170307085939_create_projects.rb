class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :project_name
    	t.string :brand
    	t.string :place
    	t.integer :media_coverage
    	t.integer :instagram, default: 0
    	t.integer :facebook, default: 0
    	t.integer :kakao, default: 0
    	t.integer :newspaper, default: 0
    	t.integer :blog, default: 0
      t.timestamps null: false
    end
  end
end
