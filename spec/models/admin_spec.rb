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

require 'rails_helper'

RSpec.describe Admin, :type => :model do

  # -- associations
  it { is_expected.to have_and_belong_to_many(:stores) }


  # -- model checks
  # email
  describe 'email field' do
    it 'should have an email' do
      admin = FactoryGirl.create(:admin)
      admin_email = admin.email
      expect(admin.email).to eq admin_email
    end
    it 'should have a unique email' do
      admin = FactoryGirl.build(:admin)
      expect(admin).to validate_uniqueness_of(:email)
    end
    context 'when email is blank' do
      it { expect(FactoryGirl.build(:admin, :email => '')).to be_invalid }
    end
    context 'when an email address is not unique' do
      it 'should fail' do
        admin = FactoryGirl.create(:admin)
        expect(FactoryGirl.create(:admin, :email => 'username1@email.com')).to be_invalid
      end
    end
  end

  describe 'first_name field' do
    it 'should have a first name'
    context 'when a first name is blank'
  end

  describe 'last_name field' do
    it 'should have a last name'
    context 'when a last name is blank'
  end

  describe 'password field' do
    it 'should have a password'
    it 'should be between 6 and 20 characters'
    context 'when password is not present'
    context 'when passwords don\'t match'
  end
end
