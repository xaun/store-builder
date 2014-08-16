class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :homepage_title
      t.string :homepage_meta_description
      t.string :legal_business_name
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country
      t.string :state

      t.timestamps
    end
  end
end
