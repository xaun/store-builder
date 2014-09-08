# == Schema Information
#
# Table name: stores
#
#  id                        :integer          not null, primary key
#  store_name                :string(255)
#  homepage_title            :string(255)
#  homepage_meta_description :string(255)
#  legal_business_name       :string(255)
#  phone_number              :string(255)
#  street                    :string(255)
#  city                      :string(255)
#  postcode                  :string(255)
#  country                   :string(255)
#  state                     :string(255)
#  facebook                  :string(255)
#  twitter                   :string(255)
#  instagram                 :string(255)
#  youtube                   :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#

class Store < ActiveRecord::Base
  has_and_belongs_to_many :admins
  has_many :products
  has_many :collections
  has_many :orders
  has_many :users
  has_many :guests

  validates :store_name, :presence => true, :uniqueness => true, :length => { :minimum => 2 }, :on => :create
end






