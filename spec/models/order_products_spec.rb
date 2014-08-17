# == Schema Information
#
# Table name: order_products
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  quantity   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe OrderProducts, :type => :model do
  it { is_expected.to belong_to(:order) }
  it { is_expected.to belong_to(:product) }
end
