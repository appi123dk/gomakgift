class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
    	t.string :company_name       # 회사이름
    	t.string :url                # 회사 사이트 주소
    	t.string :category           # 판매품목
    	t.integer :print_cost        # 인쇄비용
    	t.integer :package_cost      # 포장비용
      t.string :company_phone      # 담당자 연락처  
    	t.string :company_fax        # 담당자 연락처  
      t.timestamps null: false
    end
  end
end
