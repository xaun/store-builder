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

require 'rails_helper'

RSpec.describe Order, :type => :model do

  # ----- Associations ------ #
  it { is_expected.to belong_to(:store) }
  it { is_expected.to have_many(:order_products) }
  it { is_expected.to have_many(:products) } # through :order_products
  it { is_expected.to belong_to(:user) }


end
