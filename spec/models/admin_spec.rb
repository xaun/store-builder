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
  # -- email
  describe 'email field' do
    # -- existence & uniqueness
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
        admin = FactoryGirl.create(:admin, :email => 'user1@example.com')
        expect(FactoryGirl.build(:admin, :email => 'user1@example.com')).to be_invalid
      end
    end

    # format
    context 'when email format is valid' do
      it 'should be valid' do
        @admin = FactoryGirl.create(:admin)
        addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
        addresses.each do |valid_address|
          @admin.email = valid_address
          expect(@admin).to be_valid
        end
        expect(@admin).to be_valid
      end
    end

    context 'when an invalid email' do
      it 'should be invalid' do
        @admin = FactoryGirl.create(:admin)
        addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
        addresses.each do |invalid_address|
          @admin.email = invalid_address
          expect(@admin).to be_invalid
        end
      end
    end
  end


  # -- password
  describe 'password field' do
    # -- existence & length requirements
    it 'should have a password' do
      @admin = FactoryGirl.create(:admin)
      expect(@admin.password).to eq 'Chicken1'
      expect(@admin.password_confirmation).to eq 'Chicken1'
    end

    it 'should contain valid characters' do
      admin = FactoryGirl.build(:admin, :password => 'chicken')
      expect(admin).to be_invalid
    end

    context 'when password is between 6 and 20 characters' do
      it 'should be valid' do
        @admin = FactoryGirl.create(:admin)
        expect(@admin).to be_valid
      end
    end


    context 'when password is less than 6 or more than 20 characters' do
      it 'should be invalid' do
        @admin = FactoryGirl.create(:admin)
        passwords = ['xxx', 'xxxxxxxxxxxxxxxxxxxxx']
        passwords.each do |invalid_password|
          @admin.password = invalid_password
          @admin.password_confirmation = invalid_password
          expect(@admin).to be_invalid
        end
        expect(@admin).to be_invalid
      end
    end

    context 'when password is not present' do
      it 'should be invalid' do
        expect(FactoryGirl.build(:admin, :password => '', :password_confirmation => '')).to be_invalid
      end
    end

    context 'when passwords don\'t match' do
      it { expect(FactoryGirl.build(:admin, :password => 'rooster',:password_confirmation => 'chicken')).to be_invalid }
    end
  end


  # # -- first name
  # describe 'first_name field' do
  #   # -- existence
  #   it 'should have a first name' do
  #     admin = FactoryGirl.create(:admin)
  #     admin_first_name = admin.first_name
  #     expect(admin.first_name).to eq admin_first_name
  #   end

  #   context 'when a first name is blank' do
  #     it { expect(FactoryGirl.build(:admin, :first_name => '')).to be_valid  }
  #   end

  #   context 'when a first name is too short' do
  #     it { expect(FactoryGirl.build(:admin, :first_name => 'x')).to be_invalid }
  #   end
  # end


  # # -- last name
  # describe 'last_name field' do
  #   # -- existence
  #   it 'should have a last name' do
  #     admin = FactoryGirl.create(:admin)
  #     admin_last_name = admin.last_name
  #     expect(admin.last_name).to eq admin_last_name
  #   end

  #   context 'when a last name is blank' do
  #     it { expect(FactoryGirl.build(:admin, :last_name => '')).to be_valid }
  #   end

  #   context 'when a last name is too short' do
  #     it { expect(FactoryGirl.build(:admin, :last_name => 'l')).to be_invalid }
  #   end
  # end

end
