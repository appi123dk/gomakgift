class CreateDices < ActiveRecord::Migration
  def change
    create_table :dices do |t|
    	t.string :employee_name
    	t.integer :number
      t.timestamps null: false
    end
  end
end
