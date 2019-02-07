class CreateAddonclearanceToConverts < ActiveRecord::Migration[5.2]
  def change
    add_column :converts, :onclearance, :string 
  end
end
