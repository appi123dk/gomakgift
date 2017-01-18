class AdminCommentsController < ApplicationController
	def index
		@comments = Comment.all		
	end
end
