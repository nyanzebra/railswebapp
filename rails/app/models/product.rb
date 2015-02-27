class Product < ActiveRecord::Base
	belongs_to :upc_description
	validates :upc_description, presence: true

	def self.search(query_text = '', query_num = nil)
		if query_num != nil
			where('serial_num = ?', query_num)
		elsif query_text != ''
			where('location LIKE ?', query_text)
		end
	end
end
