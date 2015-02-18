class UpcDescriptions < ActiveRecord::Migration
  def change
    UpcDescription.connection.execute('create table upc_descriptions (id serial primary key,upc bigint NOT NULL UNIQUE,vendor text,sizeof text,fit text,style text,color text,gender text);')
  end
end
