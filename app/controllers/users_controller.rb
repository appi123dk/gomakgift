class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token
	def login
		render :layout => "bigbag_login"
	end

	def login_inquire
		render :layout => "bigbag_login"
	end

	def login_session
		user = User.where('email = ? AND phone = ?', params[:email], params[:phone]).take
		if user.nil?
			redirect_to '/users/login'
		else
			session[:user_id] = user.id
			redirect_to "/gifts/order_index/#{user.id}"
		end
	end

	def login_session_inquire
		user = User.where('email = ? AND phone = ?', params[:email], params[:phone]).take
		if user.nil?
			new_user = User.new
			new_user.email = params[:email]
			new_user.phone = params[:phone]
			new_user.save
			session[:user_id] = new_user.id
			redirect_to "/gifts/inquire/#{new_user.id}"
		else
			session[:user_id] = user.id
			redirect_to "/gifts/inquire/#{user.id}"
		end
	end

	def logout
		reset_session
		redirect_to '/'
	end
end
