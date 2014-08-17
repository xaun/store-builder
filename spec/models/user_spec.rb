# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  phone_number    :string(255)
#  street          :string(255)
#  city            :string(255)
#  postcode        :string(255)
#  country         :string(255)
#  state           :string(255)
#  store_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe User, :type => :model do

  # ----- Associations ------ #
  it { is_expected.to belong_to(:store) }
  it { is_expected.to have_many(:orders) }


end