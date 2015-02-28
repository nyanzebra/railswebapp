module Rfid
  class Products < Grape::API
  	resource 'products' do
      get '/' do
        Product.all
      end
      get '/:id' do
      	Product.find(params[:id])
      end
	end
  end
end
