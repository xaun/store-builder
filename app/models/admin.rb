# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  user_name       :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Admin < ActiveRecord::Base
  has_and_belongs_to_many :stores

  has_secure_password
  validates :user_name, :presence => true,  :uniqueness => true, :length => { :minimum => 6 }, :on => :create
end





