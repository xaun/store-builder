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

require 'rails_helper'

RSpec.describe Admin, :type => :model do
  it { is_expected.to have_and_belong_to_many(:stores) }
end
