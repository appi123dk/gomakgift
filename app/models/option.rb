class Option < ActiveRecord::Base
	has_and_belongs_to_many :products
	has_many :optiondetails
end
