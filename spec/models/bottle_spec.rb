require 'rails_helper'

RSpec.describe Bottle, type: :model do
  let(:bottle) { create :bottle }

  context "validation" do
    it 'valid' do
      bottle.valid?
      expect(bottle.errors).to be_blank
    end

    it 'invalid without status' do
      bottle = build(:bottle, status: nil)
      expect(bottle.save).to eq(false)
      expect(bottle.errors[:status]).to be_present

      bottle.status = ''
      expect(bottle.save).to eq(false)
      expect(bottle.errors[:status]).to be_present
    end
  end
end
