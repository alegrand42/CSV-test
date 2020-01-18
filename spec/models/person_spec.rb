require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'validations' do
    subject { create(:person) }

    it 'is valid' do
      expect(subject).to be_valid
    end

    it 'has no empty email' do
      expect(subject.email).not_to be_empty
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an address' do
      subject.address = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a mobile phone' do
      subject.mobile_phone_number = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a home phone' do
      subject.home_phone_number = nil
      expect(subject).to_not be_valid
    end
  end
end
