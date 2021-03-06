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
#  store_id     :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guest, :class => 'Guests' do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone_number "MyString"
    street "MyString"
    city "MyString"
    postcode "MyString"
    country "MyString"
    state "MyString"
  end
end
