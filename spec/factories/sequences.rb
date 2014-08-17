FactoryGirl.define do
  sequence :first_name do |n|
    "firstname#{n}"
  end
  sequence :last_name do |n|
    "lastname#{n}"
  end
  sequence :email do |n|
    "user#{n}@example.com"
  end
end
