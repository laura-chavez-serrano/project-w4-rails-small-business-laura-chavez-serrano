class CreateAddpricedToConverts < ActiveRecord::Migration[5.2]
  def change
    add_column :converts, :priced, :integer 
     
  end
end
