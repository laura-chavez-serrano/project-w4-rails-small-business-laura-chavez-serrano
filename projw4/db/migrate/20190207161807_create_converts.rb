class CreateConverts < ActiveRecord::Migration[5.2]
  def change
    create_table :converts, id: false do |t|
      t.primary_key :pid
      t.string :item
      t.text :description
      t.integer :price
      t.string :condition
      t.integer :dimension_w
      t.integer :dimension_l
      t.integer :dimension_h
      t.string :img_file
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end
