class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
    	t.string :name
    	t.string :brand
    	t.string :customer
    	t.string :funding
    	t.datetime :exp_year

      t.timestamps
    end
  end
end
