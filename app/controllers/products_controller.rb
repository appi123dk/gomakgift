class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		
	end

	def single_product
		@product = Product.find(params[:id])
		@supplier = @product.supplier
		@price = @product.price
		@qty = @product.quantity
	end

	def create
		product 										= Product.new
		product.title               = params[:title]
		product.quantity_id         = params[:quantity_id]
		product.price_id            = params[:price_id]
		product.subtitle            = params[:subtitle]
		product.detail              = params[:detail]
		product.product_image       = params[:product_image]
		product.product_thumb       = params[:product_thumb]
		product.display_order       = params[:display_order]
		product.supply_price        = params[:supply_price]
		product.supplier_id         = params[:supplier_id]
		product.min_qty             = params[:min_qty]
		product.brand_name          = params[:brand_name]
		product.print_package_cost  = params[:print_package_cost]
		product.delivery_cost       = params[:delivery_cost]
		product.save

		redirect_to '/products/new'
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		product 										= Product.find(params[:id])
		product.title               = params[:title]
		product.quantity_id         = params[:quantity_id]
		product.price_id            = params[:price_id]
		product.subtitle            = params[:subtitle]
		product.detail              = params[:detail]
		product.product_image       = params[:product_image]
		product.product_thumb       = params[:product_thumb]
		product.display_order       = params[:display_order]
		product.supply_price        = params[:supply_price]
		product.supplier_id         = params[:supplier_id]
		product.min_qty             = params[:min_qty]
		product.brand_name          = params[:brand_name]
		product.print_package_cost  = params[:print_package_cost]
		product.delivery_cost       = params[:delivery_cost]
		product.save

		redirect_to '/products/index'
	end

	def unsale_product
		product = Product.find(params[:id])
		product.is_display ? product.is_display = false : product.is_display = true
		product.save

		redirect_to '/products/index'
	end
end
