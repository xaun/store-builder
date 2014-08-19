# == Schema Information
#
# Table name: stores
#
#  id                        :integer          not null, primary key
#  store_name                :string(255)
#  homepage_title            :string(255)
#  homepage_meta_description :string(255)
#  legal_business_name       :string(255)
#  phone_number              :string(255)
#  street                    :string(255)
#  city                      :string(255)
#  postcode                  :string(255)
#  country                   :string(255)
#  state                     :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#

require 'rails_helper'

RSpec.describe Store, :type => :model do

  # -- Associations
  it { is_expected.to have_and_belong_to_many(:admins) }
  it { is_expected.to have_many(:products) }
  it { is_expected.to have_many(:collections) }
  it { is_expected.to have_many(:orders) }
  it { is_expected.to have_many(:users) }

  # -- model checks
  # -- store_name
  describe 'store_name field' do
    # -- existence & uniqueness
    it 'should have a store_name' do
      store = FactoryGirl.create(:store)
      store_name = store.store_name
      expect(store.store_name).to eq store_name
    end
    it 'should have a unique store_name' do
      store = FactoryGirl.build(:store)
      expect(store).to validate_uniqueness_of(:store_name)
    end
    context 'when a store_name is not unique' do
      it 'should fail' do
        store = FactoryGirl.create(:store, :store_name => 'store1')
        expect(FactoryGirl.build(:store, :store_name => 'store1')).to be_invalid
      end
    end
    context 'when store_name is blank' do
      it 'should fail' do
        expect(FactoryGirl.build(:store, :store_name => '')).to be_invalid
      end
    end
  end

  # --
end











