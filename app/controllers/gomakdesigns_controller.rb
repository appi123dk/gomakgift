class GomakdesignsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		@clients = Client.all
		render :layout => "gomakdesign"
	end

	def complete
		render :layout => "gomakdesign"
	end

	def create
		# Client DB 생성
		client = Client.find(params["client_id"])
		client.service_intro = params[:service_intro]
		client.save

		# 진단서 작성
		packages = params[:chk_package]
		packages.each do |package_name|
			if package_name == 'web_design' || package_name == 'logo_design'
				complex_question = ComplexQuestion.new
				complex_question.client_id = client.id
				complex_question.package_name = package_name
				complex_question.step_2 = params["#{package_name}_step2"]
				complex_question.step_3 = params["#{package_name}_step3"]
				complex_question.step_4 = params["#{package_name}_step4"]
				complex_question.step_5 = params["#{package_name}_step5"]
				complex_question.step_6 = params["#{package_name}_step6"]
				complex_question.save
			else 
				simple_question = Simple.new
				simple_question.client_id = client.id
				simple_question.package_name = package_name
				simple_question.step_2 = params["#{package_name}_step2"]
				simple_question.step_3 = params["#{package_name}_step3"]
				simple_question.save
			end
		end

		redirect_to '/gomakdesigns/complete'
	end
end
