class TermsController < ApplicationController
	def privacy_policy
		render :layout => "bigbag"
	end

	def terms_and_conditions
		render :layout => "bigbag"
	end
end
