require 'rails_helper'

RSpec.describe Cadence, type: :model do
  let!(:cadence) { create :cadence }
  
  it 'returns valid' do
    expect(cadence).to be_valid
  end

  context 'invalid' do
    let(:cadence2) { Cadence.new permutation: cadence.permutation }

    it 'must be unique' do
      expect(cadence2).not_to be_valid
    end
  end
end
