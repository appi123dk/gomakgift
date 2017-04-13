class ProjectsController < ApplicationController
	def index
		@project = Project.find(2)
		@count = @project.surveys.where.not('age = ?', 000).count
		@exit_count = @project.surveys.count - @count
		render :layout => "project"
	end	

	def count
		survey = Survey.new
		survey.project_id = 2
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
