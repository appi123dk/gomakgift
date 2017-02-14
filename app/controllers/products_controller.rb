class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		
	end

	def single_product
		@product = Product.find(params[:id])
		@recommend_products = Product.where('category = ? AND id != ?', @product.category, @product.id)
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
		product.display_order       = params[:display_order]
		product.supply_price        = params[:supply_price]
		product.supplier_id         = params[:supplier_id]
		product.min_qty             = params[:min_qty]
		product.brand_name          = params[:brand_name]
		product.print_package_cost  = params[:print_package_cost]
		product.delivery_cost       = params[:delivery_cost]
		product.recommend_festival  = params[:recommend_festival]
		product.explain_package     = params[:explain_package]
		product.mainpage_title      = params[:mainpage_title]
		product.mainpage_story      = params[:mainpage_story]
		product.category            = params[:category]
		product.product_banner_image  = params[:product_banner_image]
		product.save

		params[:img_url].each do |url|
			thumbnail = Thumbnail.new
			thumbnail.product_id = product.id
			thumbnail.img_url = url
			thumbnail.save
		end

		redirect_to '/products/new'
	end

	def edit
		@product = Product.find(params[:id])
	end

	skip_before_action :verify_authenticity_token
	def update
		product 										= Product.find(params[:id])
		product.title               = params[:title]
		product.quantity_id         = params[:quantity_id]
		product.price_id            = params[:price_id]
		product.subtitle            = params[:subtitle]
		product.detail              = params[:detail]
		product.product_image       = params[:product_image]
		product.display_order       = params[:display_order]
		product.supply_price        = params[:supply_price]
		product.supplier_id         = params[:supplier_id]
		product.min_qty             = params[:min_qty]
		product.brand_name          = params[:brand_name]
		product.print_package_cost  = params[:print_package_cost]
		product.delivery_cost       = params[:delivery_cost]
		product.recommend_festival  = params[:recommend_festival]
		product.explain_package     = params[:explain_package]
		product.mainpage_title      = params[:mainpage_title]
		product.mainpage_story      = params[:mainpage_story]
		product.category            = params[:category]
		product.product_banner_image  = params[:product_banner_image]
		product.save

		thumbnails = product.thumbnails
		par_idx = 0
		thumbnails.each do |thumbnail|
			thumbnail.img_url = params[:img_url][par_idx]
			thumbnail.save
			par_idx += 1
		end

		if params[:img_url].size > par_idx
			(params[:img_url].size - par_idx).times do 
				thumbnail = Thumbnail.new
				thumbnail.product_id = product.id
				thumbnail.img_url = params[:img_url][par_idx]
				thumbnail.save

				par_idx += 1
			end
		end

		redirect_to '/products/index'
	end

	def unsale_product
		product = Product.find(params[:id])
		product.is_display ? product.is_display = false : product.is_display = true
		product.save

		redirect_to '/products/index'
	end
end
