class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.belongs_to :user, index: true
    	t.string :category
    	t.string :content
    	t.boolean :is_replied, default: false
      t.timestamps null: false
    end
  end
end
