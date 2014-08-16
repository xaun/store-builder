# == Schema Information
#
# Table name: collections
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  featured_image   :string(255)
#  description      :string(255)
#  page_title       :string(255)
#  meta_description :string(255)
#  url_handle       :string(255)
#  visibility       :boolean
#  created_at       :datetime
#  updated_at       :datetime
#

class Collection < ActiveRecord::Base
end
