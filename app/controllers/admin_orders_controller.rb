class AdminOrdersController < ApplicationController

	def index
		@orders = Order.where('is_finished = ?', false)
	end

	def complete
		@orders = Order.where('is_finished = ?', true)
	end

	def view
		require 'httparty'
		Iamport.token
		@order = Order.find(params[:id])
		@shoppingcarts = @order.shoppingcarts
		@payment_product = Iamport.find(@order.merchant_uid)
	end

	def check_payment
		order = Order.find(params[:id])
		order.is_payed ? order.is_payed = false : order.is_payed = true

		order.datetime_payed = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_designed
		order = Order.find(params[:id])
		order.is_designed ? order.is_designed = false : order.is_designed = true
		order.datetime_designed = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_confirmed
		order = Order.find(params[:id])
		order.is_confirmed ? order.is_confirmed = false : order.is_confirmed = true
		order.datetime_confirmed = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_ordered
		order = Order.find(params[:id])
		order.is_ordered ? order.is_ordered = false : order.is_ordered = true
		order.datetime_ordered = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_finished
		order = Order.find(params[:id])
		order.is_finished ? order.is_finished = false : order.is_finished = true
		order.datetime_finished = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_issued
		order = Order.find(params[:id])
		order.is_issued ? order.is_issued = false : order.is_issued = true
		order.datetime_issued = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def edit_price
		order = Order.find(params[:id])
		order.payment = params[:payment]
		order.etc = params[:etc]
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def edit_delivery
		order = Order.find(params[:id])
		order.deliver_name = params[:deliver_name]
		order.deliver_number = params[:deliver_number]
		order.datetime_delivered = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def cancle_order
		order = Order.find(params[:id])
		order.is_cancled = true
		order.datetime_cancled = DateTime.now()
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def refund_order
		order = Order.find(params[:id])
		order.is_returned = true
		order.datetime_returned = DateTime.now()
		order.save
		
		redirect_to "/admin_orders/view/#{order.id}"
	end

	def sendmail
		# 주문되었음을 고객-직원에게 알리는 메일
		@alarm_mail = NoticeMailer.order_alarm_mail("appi1234dk@gmail.com").deliver
		redirect_to "/admin_orders/index"
	end
end
