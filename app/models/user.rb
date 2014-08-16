# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  password         :string(255)
#  confirm_password :string(255)
#  phone_number     :string(255)
#  street           :string(255)
#  city             :string(255)
#  postcode         :string(255)
#  country          :string(255)
#  state            :string(255)
#  store_id         :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class User < ActiveRecord::Base
  belongs_to :store
  has_many :orders
end
