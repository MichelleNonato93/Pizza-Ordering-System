class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
    	t.integer :order_id
    	t.integer :variant_id
    	t.integer :quantity
    	t.decimal :total
    	t.timestamps
    end
  end
end
