require 'rails_helper'

RSpec.describe EmailPermutator do
  let(:target_params) {
    {
      first_name: 'Tommy',
      last_name: 'Rodriguez',
      business: 'Parallel6'
    }
  }

  puts 'CREATED CADENCES'
  subject { EmailPermutator.new(target_params).create_target }
  it 'can find an email for a target' do

    cadences = Cadence.create([
      { permutation: '#{@first_name}' },
      { permutation: '#{@last_name}' },
      { permutation: '#{@first_name}#{@last_name}' },
      { permutation: '#{@first_name}.#{@last_name}' },
      { permutation: '#{@fi}#{@last_name}' },
      { permutation: '#{@fi}.#{@last_name}' },
      { permutation: '#{@first_name}#{@li}' },
      { permutation: '#{@first_name}.#{@li}' },
      { permutation: '#{@fi}#{@li}' },
      { permutation: '#{@fi}.#{@li}' },
      { permutation: '#{@last_name}#{@first_name}' },
      { permutation: '#{@last_name}.#{@first_name}' },
      { permutation: '#{@last_name}#{@fi}' },
      { permutation: '#{@last_name}.#{@fi}' },
      { permutation: '#{@li}#{@first_name}' },
      { permutation: '#{@li}.#{@first_name}' },
      { permutation: '#{@li}#{@fi}' },
      { permutation: '#{@li}.#{@fi}' },
      { permutation: '#{@fi}#{@mi}#{@last_name}' },
      { permutation: '#{@fi}#{@mi}.#{@last_name}' },
      { permutation: '#{@first_name}#{@mi}#{@last_name}' },
      { permutation: '#{@first_name}.#{@mi}.#{@last_name}' },
      { permutation: '#{@first_name}#{@middle_name}#{@last_name}' },
      { permutation: '#{@first_name}.#{@middle_name}.#{@last_name}' },
      { permutation: '#{@first_name}-#{@last_name}' },
      { permutation: '#{@fi}-#{@last_name}' },
      { permutation: '#{@first_name}-#{@li}' },
      { permutation: '#{@fi}-#{@li}' },
      { permutation: '#{@last_name}-#{@first_name}' },
      { permutation: '#{@last_name}-#{@fi}' },
      { permutation: '#{@li}-#{@first_name}' },
      { permutation: '#{@li}-#{@fi}' },
      { permutation: '#{@fi}#{@mi}-#{@last_name}' },
      { permutation: '#{@first_name}-#{@mi}-#{@last_name}' },
      { permutation: '#{@first_name}-#{@middle_name}-#{@last_name}' },
      { permutation: '#{@first_name}_#{@last_name}' },
      { permutation: '#{@fi}_#{@last_name}' },
      { permutation: '#{@first_name}_#{@li}' },
      { permutation: '#{@fi}_#{@li}' },
      { permutation: '#{@last_name}_#{@first_name}' },
      { permutation: '#{@last_name}_#{@fi}' },
      { permutation: '#{@li}_#{@first_name}' },
      { permutation: '#{@li}_#{@fi}' },
      { permutation: '#{@fi}#{@mi}_#{@last_name}' },
      { permutation: '#{@first_name}_#{@mi}_#{@last_name}' },
      { permutation: '#{@first_name}_#{@middle_name}_#{@last_name}' }
    ])
    target = subject
    #expect(target.email).to eq 'trodriguez@parallel6.com'
  end
end


