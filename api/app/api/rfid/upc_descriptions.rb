module Rfid
  class UpcDescriptions < Grape::API
  	resource 'upc_descriptions' do
      get '/' do
        upc_description = UpcDescription.all
      end
      get '/:id' do
        UpcDescription.find(params[:id])
      end
	end		
  end
end
