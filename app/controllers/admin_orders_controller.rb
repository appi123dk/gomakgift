class AdminOrdersController < ApplicationController
	def index
		@orders = Order.where('is_finished = ?', false)
	end

	def complete
		@orders = Order.where('is_finished = ?', true)
	end
end
