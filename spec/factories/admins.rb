# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :admin do
    first_name { generate(:first_name) }
    last_name { generate(:last_name) }
    email { generate(:email) }
    password 'chicken'
    password_confirmation 'chicken'
  end
end
