class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country
      t.string :state
      t.string :store_id

      t.timestamps
    end
  end
end
