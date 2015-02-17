class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :upc_description_id
      t.column	:serial_num, :bigint
      t.text 		:location

#      t.timestamps null: false
    end
    add_foreign_key :products, :upc_descriptions, name: :upc_descriptions_id
  end
end
