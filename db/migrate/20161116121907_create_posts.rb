class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :name
    	t.string :post

      t.timestamps null: false
    end
  end
end
