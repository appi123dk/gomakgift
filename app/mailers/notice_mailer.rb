class NoticeMailer < ApplicationMailer
	default from: 'ap_cctv@gomakculture.com'
	def order_alarm_mail(recipient)
		@recipient = recipient
		mail(
			to: recipient,
			subject: '주문이 접수되었습니다, 메일을 확인해주세요!' 
		)
	end

	def order_mail_to_user(user, order)
		@user = user
		@order = order
		mail(
			to: user.email,
			subject: "#{user.username} 고객님 정상적으로 주문이 접수되었습니다."
		)
	end
end
