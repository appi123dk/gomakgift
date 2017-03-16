class Order < ActiveRecord::Base
	belongs_to :user
	has_many :shoppingcarts
	has_many :products, :through => :shoppingcarts
	has_many :drafts
end
