class UpcDescriptions < ActiveRecord::Migration
  def change
##   
#    create_table :upc_descriptions do |t|
#      t.column  :upc, :bigint
#      t.text    :vendor
#      t.text    :sizeof
#      t.text    :fit
#      t.text    :style
#      t.text    :color
#      t.text    :gender
#    end
    UpcDescription.connection.execute('create table upc_descriptions (id serial primary key,upc bigint NOT NULL UNIQUE,vendor text,sizeof text,fit text,style text,color text,gender text);')
  end
end
