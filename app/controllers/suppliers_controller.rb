class SuppliersController < ApplicationController
	def index
		@suppliers = Supplier.all
	end

	def new
		
	end

	def create
		supplier = Supplier.new
		supplier.company_name = params[:company_name]		
		supplier.url = params[:url]		
		supplier.category = params[:category]		
		supplier.print_cost = params[:print_cost]		
		supplier.package_cost = params[:package_cost]		
		supplier.company_phone = params[:company_phone]		
		supplier.company_fax = params[:company_fax]		
		supplier.save

		redirect_to '/suppliers/index'	
	end

	def edit
		@supplier = Supplier.find(params[:id])
	end

	def update
		supplier = Supplier.find(params[:id])
		supplier.company_name = params[:company_name]		
		supplier.url = params[:url]		
		supplier.category = params[:category]		
		supplier.print_cost = params[:print_cost]		
		supplier.package_cost = params[:package_cost]		
		supplier.company_phone = params[:company_phone]		
		supplier.company_fax = params[:company_fax]		
		supplier.save

		redirect_to '/suppliers/index'	
	end
end
