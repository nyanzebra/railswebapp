class UpcDescriptions < ActiveRecord::Migration
  def change
    create_table :upc_descriptions do |t|
      t.integer :upc, :limit => 8, null: false, unique: true, index: true
      t.text :vendor
      t.text :sizeof
      t.text :fit
      t.text :style
      t.text :color
      t.text :gender
    end
  end
end
