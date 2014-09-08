# == Schema Information
#
# Table name: guests
#
#  id           :integer          not null, primary key
#  first_name   :string(255)
#  last_name    :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  street       :string(255)
#  city         :string(255)
#  postcode     :string(255)
#  country      :string(255)
#  state        :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Guest < ActiveRecord::Base
  has_many :orders
end
