class NoticeMailer < ApplicationMailer
	default from: 'ap_cctv@gomakculture.com'
	def order_alarm_mail(recipient)
		@recipient = recipient
		mail(
			to: recipient,
			subject: '주문이 접수되었습니다, 메일을 확인해주세요!' 
		)
	end
end
