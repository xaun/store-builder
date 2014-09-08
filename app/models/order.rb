# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  store_id       :integer
#  guest_id       :integer
#  confirmed      :boolean
#  payment_status :string(255)
#  completed      :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Order < ActiveRecord::Base
  belongs_to :store
  has_many :order_products
  has_many :products, through: :order_products
  belongs_to :user
  belongs_to :guest
end
