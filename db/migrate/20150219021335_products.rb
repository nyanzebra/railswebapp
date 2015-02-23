class Products < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.integer :serial_num, :limit => 8, null: false
  		t.text :location, null: false
  		t.integer :upc_description_id, :limit => 8
  	end
  	add_foreign_key :products, :upc_descriptions, name: 'products_upc_description_id_fkey'
  end
end