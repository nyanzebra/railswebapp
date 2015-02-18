class Products < ActiveRecord::Migration
  def change
    Product.connection.execute('create table products (id serial primary key,upc_description_id integer references upc_descriptions,serial_num bigint NOT NULL,location text NOT NULL);')
  end
end
