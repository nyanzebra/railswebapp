# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
UpcDescription.create(upc: 51071851756, vendor: 'Wrangler', sizeof: '50/30', fit: 'stretch', style: 'jeans', color: 'blue', gender: 'Men')
UpcDescription.create(upc: 672787789760, vendor: 'Rustler', sizeof: '33/30', fit: 'classic', style: 'jeans', color: 'blue', gender: 'Men')

Product.create(upc_description_id: 1, serial_num: 1, location: 'in_store')
Product.create(upc_description_id: 2, serial_num: 2, location: 'warehouse')