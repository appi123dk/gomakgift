class Shoppingcart < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
	has_and_belongs_to_many :optiondetails
end
