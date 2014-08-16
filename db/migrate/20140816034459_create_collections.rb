class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.string :featured_image
      t.string :description
      t.string :page_title
      t.string :meta_description
      t.string :url_handle
      t.boolean :visibility

      t.timestamps
    end
  end
end
