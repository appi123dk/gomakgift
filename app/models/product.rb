class Product < ActiveRecord::Base
	belongs_to :price
	belongs_to :quantity
	has_many :shoppingcarts
	has_many :orders, :through => :shoppingcarts
end
