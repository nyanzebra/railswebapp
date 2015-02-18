class Products < ActiveRecord::Migration
  def change
##
#    create_table :products do |t|
#      t.integer :upc_description_id
#      t.column	:serial_num, :bigint
#      t.text 		:location
#    end
#    add_foreign_key :products, :upc_descriptions, name: :upc_descriptions_id
    Product.connection.execute('create table products (id serial primary key,upc_description_id integer references upc_descriptions,serial_num bigint NOT NULL,location text NOT NULL);')
  end
end
