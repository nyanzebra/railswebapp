class API < Grape::API
  prefix 'api'
  format :json

  mount Rfid::Products
  mount Rfid::UpcDescriptions
  mount Rfid::Raise
  mount Rfid::Post
end
