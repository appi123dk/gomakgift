class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		
	end

	def create
		product = Product.new
		product.title = params[:title]
		product.quantity_id = params[:quantity_id]
		product.price_id = params[:price_id]
		product.subtitle = params[:subtitle]
		product.detail = params[:detail]
		product.product_image = params[:product_image]
		product.product_thumb = params[:product_thumb]
		product.save

		redirect_to '/products/new'
	end

	def edit
		
	end

	def update
		
	end
end
