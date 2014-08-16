# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  store_id       :integer
#  payment_status :string(255)
#  confirmed      :boolean
#  completed      :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

class Order < ActiveRecord::Base
end
