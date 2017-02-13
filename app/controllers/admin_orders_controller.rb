class AdminOrdersController < ApplicationController
	def index
		@orders = Order.where('is_finished = ?', false)
	end

	def complete
		@orders = Order.where('is_finished = ?', true)
	end

	def view
		@order = Order.find(params[:id])
		@shoppingcarts = @order.shoppingcarts
	end

	def check_payment
		order = Order.find(params[:id])
		order.is_payed ? order.is_payed = false : order.is_payed = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_designed
		order = Order.find(params[:id])
		order.is_designed ? order.is_designed = false : order.is_designed = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_confirmed
		order = Order.find(params[:id])
		order.is_confirmed ? order.is_confirmed = false : order.is_confirmed = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_ordered
		order = Order.find(params[:id])
		order.is_ordered ? order.is_ordered = false : order.is_ordered = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_finished
		order = Order.find(params[:id])
		order.is_finished ? order.is_finished = false : order.is_finished = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end

	def check_issued
		order = Order.find(params[:id])
		order.is_issued ? order.is_issued = false : order.is_issued = true
		order.save

		redirect_to "/admin_orders/view/#{order.id}"
	end
end
