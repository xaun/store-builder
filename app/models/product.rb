# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  image       :string(255)
#  description :string(255)
#  type        :string(255)
#  price       :float
#  sku         :integer
#  weight      :float
#  url_handle  :string(255)
#  visibility  :boolean
#  store_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
  belongs_to :store
  has_and_belongs_to_many :collections
  has_many :order_products
  has_many :orders, through: :order_products
end
