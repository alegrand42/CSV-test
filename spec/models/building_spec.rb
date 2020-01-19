require 'rails_helper'

RSpec.describe Building, type: :model do
  context 'validations' do
    subject { create(:building) }

    it 'is valid' do
      expect(subject).to be_valid
    end

    it 'has no empty manager name' do
      expect(subject.manager_name).not_to be_empty
    end

    it 'is not valid without a manager_name' do
      subject.manager_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a ref' do
      subject.reference = nil
      expect(subject).to_not be_valid
    end
  end
end
