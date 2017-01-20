class AdminGomakdesignsController < ApplicationController

	def view
		@client = Client.find(params["id"])	
	end

	def clients
		
	end

	def edit
		@client = Client.find(params["id"])
	end

	def update
		client = Client.find(params["id"])
		client.com_name = params[:com_name]
		client.sectors = params[:sectors]
		client.contract_date = params[:contract_date]
		client.contract_month = params[:contract_month].to_i
		client.designer = params[:designer]
		client.manager = params[:manager]
		client.manager_phone = params[:manager_phone]
		client.manager_email = params[:manager_email]
		client.save

		redirect_to '/admin_gomakdesigns/lists'
	end

	def clients_create
		client = Client.new
		client.com_name = params[:com_name]
		client.sectors = params[:sectors]
		client.contract_date = params[:contract_date]
		client.contract_month = params[:contract_month].to_i
		client.designer = params[:designer]
		client.manager = params[:manager]
		client.manager_phone = params[:manager_phone]
		client.manager_email = params[:manager_email]
		client.save

		redirect_to '/admin_gomakdesigns/clients'
	end

	def lists
		@clients = Client.all
	end
end
