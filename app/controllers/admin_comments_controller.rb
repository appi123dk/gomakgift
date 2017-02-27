class AdminCommentsController < ApplicationController
	def index
		@comments = Comment.all		
	end

	def view
		@comment = Comment.find(params[:id])
	end

	def create_reply
		comment = Comment.find(params[:id])

		if comment.replies.nil? 
			reply = Reply.new
			reply.comment_id = params[:id]
			reply.content = params[:content]
			reply.save
		else
			reply = comment.replies.first
			reply.content = params[:content]
			reply.save
		end

		comment.is_replied = true
		comment.save

		redirect_to '/admin_comments/index'
	end
end
