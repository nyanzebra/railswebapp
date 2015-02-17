class UpcDescriptions < ActiveRecord::Migration
  def change
  	create_table :upc_descriptions do |t|
      t.column  :upc, :bigint
      t.text    :vendor
      t.text    :sizeof
      t.text    :fit
      t.text    :style
      t.text    :color
      t.text    :gender
      
      t.timestamps null: false
    end
  end
end
