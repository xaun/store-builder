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

class User < ActiveRecord::Base
  belongs_to :store
  has_many :orders
end
