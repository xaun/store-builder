class CreateJoinTableStoresAdmins < ActiveRecord::Migration
  def change
    create_join_table :stores, :admins do |t|
      # t.index [:store_id, :admin_id]
      # t.index [:admin_id, :store_id]
      t.integer :store_id
      t.integer :admin_id
    end
  end
end
