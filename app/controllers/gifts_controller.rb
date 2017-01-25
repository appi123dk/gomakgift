class GiftsController < ApplicationController
	def index
		@products = Product.all
		render :layout => "bigbag"
	end

	def order_index
		user = User.find(session[:user_id])
		@orders = user.orders
		render :layout => "bigbag"
	end

	def accounts_form
		@carts = Shoppingcart.where('ip_address = ? AND is_cart = ?', request.remote_ip, true)

		render :layout => "bigbag"
	end

	def payment
		@order = Order.find(params[:id])
		if @order.is_confirmed
			redirect_to "/gifts/print_product/#{@order.id}"
		end
		render :layout => "bigbag"
	end

	def design
		render :layout => "bigbag"
	end

	def print_product
		@order = Order.find(params[:id])
		render :layout => "bigbag"
	end

	def support
		render :layout => "bigbag"
	end

	def inquire
		user = User.find(session[:user_id])
		@comments = user.comments
		render :layout => "bigbag"
	end

	def single_product
		@product = Product.find(params[:id])
		@product_price = @product.price
		@product_qty = @product.quantity
		@price_arr = [
			@product_price.price_min, @product_price.price_1, @product_price.price_2, @product_price.price_3, 
			@product_price.price_4, @product_price.price_5, @product_price.price_6
		]
		@qty_arr = [
			@product_qty.qty_max, @product_qty.qty_1, @product_qty.qty_2, @product_qty.qty_3, 
			@product_qty.qty_4, @product_qty.qty_5, @product_qty.qty_6
		]
		render :layout => "bigbag"
	end

	def login
		render :layout => "bigbag_login"
	end

	def no_order
		render :layout => "bigbag"
		
	end

	def cart_delete
		cart = Shoppingcart.find(params[:id])
		cart.destroy

		redirect_to '/gifts/accounts_form'
	end
end
