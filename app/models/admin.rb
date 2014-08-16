# == Schema Information
#
# Table name: admins
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  email            :string(255)
#  password         :string(255)
#  confirm_password :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Admin < ActiveRecord::Base
  has_and_belongs_to_many :stores
end
