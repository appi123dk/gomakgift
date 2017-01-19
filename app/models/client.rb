class Client < ActiveRecord::Base
	has_many :simples
	has_many :complex_questions
end
