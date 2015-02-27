class UpcDescription < ActiveRecord::Base
	has_many :products, dependent: :destroy

	def self.search(query_text = '', query_num = nil)
		if query_num != nil
			where('upc = #{query_num}')
		elsif query_text != ''
			where('vendor LIKE ?
						OR fit LIKE ?
						OR sizeof LIKE ?
						OR style LIKE ?
						OR color LIKE ?
						OR gender LIKE ?',
						query_text,
						query_text,
						query_text,
						query_text,
						query_text,
						query_text)
		end
	end
end