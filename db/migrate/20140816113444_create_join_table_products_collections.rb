class CreateJoinTableProductsCollections < ActiveRecord::Migration
  def change
    create_join_table :products, :collections do |t|
      # t.index [:product_id, :collection_id]
      # t.index [:collection_id, :product_id]
      t.integer :product_id
      t.integer :collection_id
    end
  end
end
