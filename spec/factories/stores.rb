# == Schema Information
#
# Table name: stores
#
#  id                    :integer          not null, primary key
#  store_name            :string(255)
#  homepage_title        :string(255)
#  shopfront_description :string(255)
#  legal_business_name   :string(255)
#  seller_email          :string(255)
#  phone_number          :string(255)
#  street                :string(255)
#  city                  :string(255)
#  postcode              :string(255)
#  country               :string(255)
#  state                 :string(255)
#  facebook              :string(255)
#  twitter               :string(255)
#  instagram             :string(255)
#  youtube               :string(255)
#  about                 :text
#  created_at            :datetime
#  updated_at            :datetime
#

FactoryGirl.define do
  factory :store do
    store_name { generate(:store_name) }
  end
end
