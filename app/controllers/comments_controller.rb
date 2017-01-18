class CommentsController < ApplicationController
	def create
		comment = Comment.new
		comment.user_id = session[:user_id]
		comment.category = params[:category]
		comment.content = params[:content]
		comment.save

		redirect_to "/gifts/inquire/#{session[:user_id]}"
	end
end
