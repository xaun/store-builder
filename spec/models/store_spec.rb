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
#  created_at                :datetime
#  updated_at                :datetime
#

require 'rails_helper'

RSpec.describe Store, :type => :model do
  it { is_expected.to have_and_belong_to_many(:admins) }
  it { is_expected.to have_many(:products) }
  it { is_expected.to have_many(:collections) }
  it { is_expected.to have_many(:orders) }
  it { is_expected.to have_many(:users) }
end
