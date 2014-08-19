# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  image        :string(255)
#  description  :string(255)
#  product_type :string(255)
#  price        :float
#  sku          :string(255)
#  weight       :float
#  quantity     :integer
#  url_handle   :string(255)
#  visibility   :boolean
#  store_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Product, :type => :model do

  # ----- Associations ------ #
  it { is_expected.to belong_to(:store) }
  it { is_expected.to have_and_belong_to_many(:collections) }
  it { is_expected.to have_many(:order_products) }
  it { is_expected.to have_many(:orders) } # through :order_products


end
