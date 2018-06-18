class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
    	t.integer :product_id
    	t.string :size
    	t.decimal :price
    	t.timestamps
    end
  end
end
