class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
    	t.string :option_name    # 옵션 명
      t.timestamps null: false
    end
  end
end
