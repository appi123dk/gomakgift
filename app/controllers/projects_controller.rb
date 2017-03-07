class ProjectsController < ApplicationController
	def index
		@project = Project.find(1)
		@count = @project.surveys.count
		render :layout => "project"
	end	

	def count
		survey = Survey.new
		survey.project_id = 1
		survey.age = params[:age]
		survey.female = params[:female]
		survey.save

		redirect_to '/projects/index'
	end

	def del
		Survey.last.destroy
		redirect_to '/projects/index'
	end
end
