class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :title            # 의뢰명
    	t.string :com_name         # 회사명
    	t.string :service_intro    # 서비스 소개
    	t.string :sectors          # 업종
    	t.date :contract_date      # 계약일자
    	t.integer :contract_month  # 계약 개월 수
    	t.string :manager          # 담당자
    	t.string :manager_phone    # 담당자 전화번호
    	t.string :manager_email    # 담당자 이메일
    	t.string :designer         # 담당 디자이너
      t.timestamps null: false
    end
  end
end
