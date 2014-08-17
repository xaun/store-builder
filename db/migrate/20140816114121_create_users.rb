class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country
      t.string :state
      t.integer :store_id

      t.timestamps
    end
  end
end
