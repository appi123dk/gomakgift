class GiftsController < ApplicationController
	def index
		@products = Product.all
		render :layout => "bigbag"
	end

	def accounts_form
		render :layout => "bigbag"
	end

	def payment
		render :layout => "bigbag"
	end

	def design
		render :layout => "bigbag"
	end

	def print_product
		render :layout => "bigbag"
	end

	def support
		render :layout => "bigbag"
	end

	def inquire
		render :layout => "bigbag"
	end

	def single_product
		render :layout => "bigbag"
	end

	def login
		render :layout => "bigbag_login"
	end
end
