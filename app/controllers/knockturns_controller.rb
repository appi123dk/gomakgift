class KnockturnsController < ApplicationController
	def index
		
	end

	def result_save
		random_num = (1..6).to_a.sample

		dice = Dice.new
		dice.employee_name = params[:employee_name]
		dice.number = random_num
		dice.save

		redirect_to "/knockturns/result/#{random_num}"

	end

	def result
		@dice_num = params[:id]
	end
end
