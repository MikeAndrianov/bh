require 'rails_helper'

describe User, type: :model do

  let(:user) { create :user }

  context "validation" do
    before do

    end

    it 'valid' do
      user.valid?
      expect(user.errors).to be_blank
      # expect(company).to be_valid
    end

    it 'invalid without name' do
      # company = build(:company, name: '')
      # expect(company.save).to eq(false)
    end

  end

  context 'manager' do
    it 'role should be presented' do
      expect(user.manager?).to be true
    end
  end
end
