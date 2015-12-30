require 'rails_helper'

RSpec.describe EmailPermutator do
  let(:target_params) {
    {
      first_name: 'Tommy',
      last_name: 'Rodriguez',
      business: 'Parallel6'
    }
  }

  subject { EmailPermutator.new(target_params).create_target }
  it 'can find an email for a target' do
    cadences = Cadence.create([
      { permutation: '#{@first_name}' }
    ])
    target = subject
    target.emails.each do |e|
      expect(e.email).to include 'tommy@parallel6.com'
    end
  end

  context 'when not valid' do
    it 'does not create a target' do
      expect { subject }.not_to change { Target.count }
    end
  end
end


