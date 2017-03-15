class OrdersController < ApplicationController
	def create
		# User DB 작성
		is_user = User.where('email = ? AND phone = ?', params[:email], params[:phone]).take
		if is_user.nil?
			user = User.new
			user.username = params[:username]
			user.email = params[:email]
			user.phone = params[:phone]
			user.private_check = true
			unless params[:mailreceive_check].nil?
				user.mailreceive_check = true
			end
			if user.address_number != params[:arrive_address_number]
				user.address_number = params[:arrive_address_number]
			end
			if user.address != params[:arrive_address]
				user.address = params[:arrive_address]
			end
			if user.address_detail != params[:arrive_address_detail]
				user.address_detail = params[:arrive_address_detail]
			end
			user.save
		else
			unless params[:mailreceive_check].nil?
				is_user.mailreceive_check = true
			end
			is_user.save
		end

		# Order DB 작성
		order = Order.new
		is_user.nil? ? order.user_id = user.id : order.user_id = is_user.id
		order.arrive_date = params[:arrive_date]
		order.arrive_username = params[:arrive_username]
		order.arrive_email = params[:arrive_email]
		order.arrive_phone = params[:arrive_phone]
		order.arrive_address_number = params[:arrive_address_number]
		order.arrive_address = params[:arrive_address]
		order.arrive_address_detail = params[:arrive_address_detail]
		order.agreement_check = true
		order.save

		# ShoppingCart - order db 연결
		payment = 0
		carts = Shoppingcart.where('ip_address = ? AND is_cart = ?', request.remote_ip, true)
		carts.each do |cart|
			cart.order_id = order.id
			cart.is_cart = false
			cart.save
			payment += cart.total_price
		end

		# 결제금액 입력
		order.payment = payment
		order.save

		@alarm_mail = NoticeMailer.order_alarm_mail("ap_cctv@gomakculture.com").deliver
		if is_user.nil?
			@alarm_mail_to_user = NoticeMailer.order_mail_to_user(user, order).deliver
		else
			@alarm_mail_to_user = NoticeMailer.order_mail_to_user(is_user, order).deliver
		end

		redirect_to "/gifts/payment/#{order.id}"
	end

	def new_cart
		cart = Shoppingcart.new
		cart.product_id = params[:product_id]
		cart.qty = params[:input_price]
		cart.is_cart = true
		cart.ip_address = request.remote_ip
		cart.total_price = params[:total_price]
		cart.save
		
		# 옵션디테일 아이디연결
		cart.optiondetail_ids = params[:optiondetails]

		redirect_to "/gifts/accounts_form"
	end

	def update_payment
		order = Order.find(params[:id])
		if params[:pay_method] == "bank_account"
			order.pay_method = params[:pay_method]
			order.deposit_name = params[:deposit_name]
			order.receipt_method = params[:receipt_method]
			order.com_register_number = params[:com_register_number_cash]
			order.cash_receipt_number = params[:cash_receipt_number]
			order.merchant_uid = params[:merchant_uid]
			order.save
		else
			order.pay_method = params[:pay_method]
			order.is_payed = true
			order.receipt_method = params[:receipt_method2]
			order.com_register_number = params[:com_register_number_card]
			order.merchant_uid = params[:merchant_uid]
			order.save
		end

		redirect_to "/gifts/payment/#{params[:id]}"
	end
end
