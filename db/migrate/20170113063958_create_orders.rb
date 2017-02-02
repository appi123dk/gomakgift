class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index: true              # 유저 DB 연동
    	t.string :arrive_username                    # 수령인 성명
    	t.string :arrive_email                       # 수령인 이메일
    	t.string :arrive_address                     # 배송지 주소
    	t.string :arrive_address_number              # 배송지 우편번호
    	t.string :arrive_address_detail              # 배송지 상세주소
    	t.string :arrive_phone                       # 배송지 전화번호
    	t.string :pay_method                         # 결제방법
    	t.boolean :is_payed, default: false          # 결제여부
        t.boolean :is_designed, default: false       # 시안등록여부
    	t.boolean :is_confirmed, default: false      # 시안확정여부
    	t.string :deliver_name                       # 택배회사
    	t.string :deliver_number                     # 송장번호
    	t.boolean :is_returned, default: false       # 반품여부
    	t.boolean :is_finished, default: false       # 배송완료여부
    	t.string :etc                                # 특이사항
    	t.integer :payment                           # 결제금액
    	t.string :receipt_method                     # 증빙발급신청
    	t.string :com_register_number                # 사업자등록번호
    	t.string :cash_receipt_number                # 현금영수증 전화번호
        t.date :arrive_date                          # 배송희망일
    	t.string :deposit_name                       # 입금자 명
    	t.boolean :agreement_check, default: false   # 야용약 동의
      t.timestamps null: false
    end
  end
end
