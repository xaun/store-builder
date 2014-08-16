class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.string :feature_image
      t.string :description
      t.string :page_title
      t.string :meta_description
      t.string :url_handle
      t.boolean :visibility
      t.integer :store_id

      t.timestamps
    end
  end
end
