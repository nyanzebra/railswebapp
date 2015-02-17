class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
  #  	add_foreign_key :products, :upc_descriptions, name: :upc_descriptions_id
  		t.integer :upc_description_id
    	t.column	:serial_num, :bigint
    	#t.integer :serial_num, :limit => 8
    	t.text 		:location
    	#belongs_to :upc_descriptions

      t.timestamps null: false
    end
   	add_foreign_key :products, :upc_descriptions, name: :upc_descriptions_id
  end
end
