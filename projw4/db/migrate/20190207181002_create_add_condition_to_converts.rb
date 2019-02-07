class CreateAddConditionToConverts < ActiveRecord::Migration[5.2]
  def change
    add_column :converts, :discount, :string 
  end
end
