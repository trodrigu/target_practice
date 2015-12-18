require 'rails_helper'

RSpec.describe Target, type: :model do
  let(:target) { create :target }

  it 'returns valid' do
    expect(target).to be_valid
  end

  context 'with name' do
    it 'returns 

  context 'without name' do
    it 'returns invalid' do
      target.name = ''
      expect(target).not_to be_valid
    end
  end

  context 'without business' do
    it 'returns invalid' do
      target.business = ''
    end
  end
end
