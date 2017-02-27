class AdminAreasController < ApplicationController
	def new
		
	end

	def theme_new
		
	end

	def create_theme
		theme = Theme.new
		theme.supplier_id = params[:supplier_id]
		theme.middle_banner = params[:middle_banner]
		theme.big_banner = params[:big_banner]
		theme.detail = params[:detail]
		theme.is_display = params[:is_display]
		theme.order = params[:order]
		theme.save

		redirect_to '/admin_areas/index'
		
	end

	def edit_theme
		@theme = Theme.find(params[:id])
	end

	def create_banner
		banner = Banner.new
		banner.product_id = params[:product_id]
		banner.background_url = params[:background_url]
		banner.product_url = params[:product_url]
		banner.is_display = params[:is_display]
		banner.is_left = params[:is_left]
		banner.order = params[:order]
		banner.save

		redirect_to '/admin_areas/index'
	end

	def index
		@banners = Banner.all
		@recommends = RecommendArea.all
		@themes = Theme.all
	end

	def edit_banner
		@banner = Banner.find(params[:id])
		
	end

	def update_banner
		banner = Banner.find(params[:id])
		banner.product_id = params[:product_id]
		banner.background_url = params[:background_url]
		banner.product_url = params[:product_url]
		banner.is_display = params[:is_display]
		banner.is_left = params[:is_left]
		banner.order = params[:order]
		banner.save

		redirect_to '/admin_areas/index'
	end

	def create_recommend
		recommend = RecommendArea.new
		recommend.product_id = params[:product_id]
		recommend.img_url = params[:img_url]
		recommend.title = params[:title]
		recommend.subtitle = params[:subtitle]
		recommend.is_display = params[:is_display]
		recommend.order = params[:order]
		recommend.save

		redirect_to '/admin_areas/index'
	end

	def edit_recommend
		@recommend = RecommendArea.find(params[:id])
	end

	def update_recommend
		recommend = RecommendArea.find(params[:id])
		recommend.product_id = params[:product_id]
		recommend.img_url = params[:img_url]
		recommend.title = params[:title]
		recommend.subtitle = params[:subtitle]
		recommend.is_display = params[:is_display]
		recommend.order = params[:order]
		recommend.save

		redirect_to '/admin_areas/index'
	end

	def edit_theme
		@theme = Theme.find(params[:id])
	end

	def update_theme
		theme = Theme.find(params[:id])
		theme.supplier_id = params[:supplier_id]
		theme.middle_banner = params[:middle_banner]
		theme.big_banner = params[:big_banner]
		theme.detail = params[:detail]
		theme.is_display = params[:is_display]
		theme.order = params[:order]
		theme.save

		redirect_to '/admin_areas/index'
	end
			
end
