class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :type
      t.float :price
      t.integer :sku
      t.float :weight
      t.string :url_handle
      t.boolean :visibility

      t.timestamps
    end
  end
end
