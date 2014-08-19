class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :product_type
      t.float :price
      t.string :sku
      t.float :weight
      t.integer :quantity
      t.string :url_handle
      t.boolean :visibility
      t.integer :store_id

      t.timestamps
    end
  end
end
