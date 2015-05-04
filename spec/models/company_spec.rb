require 'rails_helper'

describe Company, type: :model do

  let(:company) { build :company }

  context "validation" do
    before do

    end

    it 'valid' do
      company.valid?
      expect(company.errors).to be_blank
      expect(company).to be_valid
    end

    it "is invalid without name" do
      company = build(:company, name: '')
      expect(company.save).to eq(false)
    end

  end
end
