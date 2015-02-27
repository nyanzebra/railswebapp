# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(upc_description_id: 1, serial_num: 1, location: 'in_store')
Product.create(upc_description_id: 2, serial_num: 2, location: 'warehouse')