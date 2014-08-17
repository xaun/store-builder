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

require 'rails_helper'

RSpec.describe Admin, :type => :model do

  # associations
  it { is_expected.to have_and_belong_to_many(:stores) }

  # seeds
  before do
    # correct information
    @admin1 = Admin.create(:user_name => 'admin1', :first_name => 'firstname1', :last_name => 'lastname1', :email => 'admin1@email.com', :password_digest => 'chicken')
    # too short
    @admin2 = Admin.create(:user_name => 'admin', :first_name => 'firstname2', :last_name => 'lastname2', :email => 'admin2@email.com', :password_digest => 'chicken')
    # blank
    @admin3 = Admin.create(:user_name => '', :first_name => '', :last_name => '', :email => '', :password_digest => '')
  end

  describe 'user_name field' do
    it 'should have a username' do
      expect(@admin1.user_name).to eq 'admin1'
    end
    it 'should have a unique username' do
      expect(@admin1).to validate_uniqueness_of(:user_name)
    end
    context 'when a username is too short' do
      it { expect(@admin2).to be_invalid }
    end
    context 'when a username is blank' do
      it { expect(@admin3).to be_invalid }
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

  describe 'email field' do
    it 'should have an email'
    it 'should have a unique email'
    context 'when email is blank'
    context 'when an email address is not unique'
    context 'when an email address is a duplicate'
  end

  describe 'password field' do
    it 'should have a password'
    it 'should be between 6 and 20 characters'
    context 'when password is not present'
    context 'when passwords don\'t match'
  end
end
