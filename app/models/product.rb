class Product < ActiveRecord::Base
	belongs_to :price
	belongs_to :quantity
	belongs_to :supplier
	has_many :shoppingcarts
	has_many :orders, :through => :shoppingcarts
	has_many :thumbnails
end
