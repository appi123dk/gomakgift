class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username        # 구매자 이름
    	t.string :email           # 구매자 email
    	t.string :phone           # 구매자 핸드폰번호
    	t.string :address_number  # 구매자 우편주소
    	t.string :address         # 구매자 주소
    	t.string :address_detail  # 구매자 상세주소
    	t.boolean :private_check  # 비회원 정보제공동의
    	t.string :com_name        # 회사이름
      t.timestamps null: false
    end
  end
end
