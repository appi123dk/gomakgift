class OptionsController < ApplicationController
	def index
		@price_set = Price.all
		@qty_set = Quantity.all
	end

	def price_new
		
	end

	def price_create
		price_set = Price.new
		price_set.price_name = params[:price_name]
		price_set.price_min = params[:price_min]
		price_set.price_1 = params[:price_1]
		price_set.price_2 = params[:price_2]
		price_set.price_3 = params[:price_3]
		price_set.price_4 = params[:price_4]
		price_set.price_5 = params[:price_5]
		price_set.price_6 = params[:price_6]
		price_set.save

		redirect_to '/options/price_new'
	end

	def price_edit
		
	end

	def price_update
		
	end

	def qty_new
		
	end

	def qty_create
		qty_set = Quantity.new
		qty_set.qty_max = params[:qty_max]
		qty_set.qty_1 = params[:qty_1]
		qty_set.qty_2 = params[:qty_2]
		qty_set.qty_3 = params[:qty_3]
		qty_set.qty_4 = params[:qty_4]
		qty_set.qty_5 = params[:qty_5]
		qty_set.qty_6 = params[:qty_6]
		qty_set.save

		redirect_to '/options/qty_new'
	end

	def qty_edit
		
	end

	def qty_update
		
	end
end
