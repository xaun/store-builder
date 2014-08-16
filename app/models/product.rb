# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  image       :string(255)
#  description :string(255)
#  type        :string(255)
#  price       :float
#  sku         :integer
#  weight      :float
#  url_handle  :string(255)
#  visibility  :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
end
