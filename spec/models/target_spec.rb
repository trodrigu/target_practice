
require 'rails_helper'

RSpec.describe Target, type: :model do
  let(:target) { create :target }

  it 'returns valid' do
    expect(target).to be_valid
  end

  it 'saves a domain' do
    expect(target.domain).to eq Target.last.domain
  end

  it 'saves a first and last name' do
    expect(target.first_name).to eq Target.last.first_name
    expect(target.last_name).to eq Target.last.last_name
  end

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
