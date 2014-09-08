class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :guest_id
      t.boolean :confirmed
      t.string :payment_status
      t.boolean :completed

      t.timestamps
    end
  end
end
