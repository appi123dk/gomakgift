class OptionsController < ApplicationController
	def index
		@price_set = Price.all
		@qty_set = Quantity.all
		@option_set = Option.all
	end

	def option_new

	end	

	def option_create
		@option = Option.new
		@option.option_name = params[:option_name]
		@option.save

		0.upto(params[:option_content].length - 1) do |loop_index|
			@optiondetail = Optiondetail.new
			@optiondetail.option_content = params[:option_content][loop_index]
			@optiondetail.additional_price = params[:additional_price][loop_index]
			@option.optiondetails << @optiondetail
			@optiondetail.save
		end

		redirect_to '/options/option_new'
	end

	def option_edit
		@option = Option.find(params[:id])
	end

	def option_update
		@option = Option.find(params[:id])
		@option.option_name = params[:option_name]
		@option.save

		optiondetails = @option.optiondetails
		par_idx = 0
		optiondetails.each do |optiondetail|
			optiondetail.option_content = params[:option_content][par_idx]
			optiondetail.additional_price = params[:additional_price][par_idx]
			optiondetail.save
			par_idx += 1
		end

		if params[:option_content].size > par_idx
			(params[:option_content].size - par_idx).times do
				@optiondetail = Optiondetail.new
				@optiondetail.option_content = params[:option_content][par_idx]
				@optiondetail.additional_price = params[:additional_price][par_idx]
				@option.optiondetails << @optiondetail
				@optiondetail.save

				par_idx += 1
			end
		end

		redirect_to '/options/index'
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
		@price_set = Price.find(params[:id])
	end

	def price_update
		price_set = Price.find(params[:id])
		price_set.price_name = params[:price_name]
		price_set.price_min = params[:price_min]
		price_set.price_1 = params[:price_1]
		price_set.price_2 = params[:price_2]
		price_set.price_3 = params[:price_3]
		price_set.price_4 = params[:price_4]
		price_set.price_5 = params[:price_5]
		price_set.price_6 = params[:price_6]
		price_set.save

		redirect_to '/options/index'	
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
		@qty_set = Quantity.find(params[:id])
	end

	def qty_update
		qty_set = Quantity.find(params[:id])
		qty_set.qty_max = params[:qty_max]
		qty_set.qty_1 = params[:qty_1]
		qty_set.qty_2 = params[:qty_2]
		qty_set.qty_3 = params[:qty_3]
		qty_set.qty_4 = params[:qty_4]
		qty_set.qty_5 = params[:qty_5]
		qty_set.qty_6 = params[:qty_6]
		qty_set.save

		redirect_to '/options/index'
	end
end
