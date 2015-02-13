class Product < ActiveRecord::Base
	#self.primary_key = 'id'
  belongs_to :upc_description

end
