class Product < ActiveRecord::Base
	belongs_to :upc_description
	validates :upc_description, presence: true
end
