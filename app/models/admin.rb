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

class Admin < ActiveRecord::Base
  has_and_belongs_to_many :stores

  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
  validates :email, :presence => true,  :uniqueness => true, :length => { :minimum => 6 }, :on => :create
  validates_format_of :email, :with => EmailRegex
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :presence => true, :length => { :minimum => 2 }
  validates :password, :length => { in: 6..20 }, :confirmation => true, :format => {:with => /(?=.*[A-Z])(?=.*[\d])/}
end





