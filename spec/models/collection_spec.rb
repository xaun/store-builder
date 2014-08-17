# == Schema Information
#
# Table name: collections
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  feature_image    :string(255)
#  description      :string(255)
#  page_title       :string(255)
#  meta_description :string(255)
#  url_handle       :string(255)
#  visibility       :boolean
#  store_id         :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'rails_helper'

RSpec.describe Collection, :type => :model do

  # ----- Associations ------ #
  it { is_expected.to belong_to(:store) }
  it { is_expected.to have_and_belong_to_many(:products) }


end
