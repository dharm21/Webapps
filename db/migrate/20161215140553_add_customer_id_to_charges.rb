class AddCustomerIdToCharges < ActiveRecord::Migration[5.0]
  def change
    add_column :charges, :customer_id, :integer
  end
end
