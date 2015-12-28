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
      { permutation: '%{fn}' },
      { permutation: '%{ln}' },
      { permutation: '%{fn}%{ln}' },
      { permutation: '%{fn}.%{ln}' },
      { permutation: '%{fi}%{ln}' },
      { permutation: '%{fi}.%{ln}' },
      { permutation: '%{fn}%{li}' },
      { permutation: '%{fn}.%{li}' },
      { permutation: '%{fi}%{li}' },
      { permutation: '%{fi}.%{li}' },
      { permutation: '%{ln}%{fn}' },
      { permutation: '%{ln}.%{fn}' },
      { permutation: '%{ln}%{fi}' },
      { permutation: '%{ln}.%{fi}' },
      { permutation: '%{li}%{fn}' },
      { permutation: '%{li}.%{fn}' },
      { permutation: '%{li}%{fi}' },
      { permutation: '%{li}.%{fi}' },
      { permutation: '%{fi}%{mi}%{ln}' },
      { permutation: '%{fi}%{mi}.%{ln}' },
      { permutation: '%{fn}%{mi}%{ln}' },
      { permutation: '%{fn}.%{mi}.%{ln}' },
      { permutation: '%{fn}%{mn}%{ln}' },
      { permutation: '%{fn}.%{mn}.%{ln}' },
      { permutation: '%{fn}-%{ln}' },
      { permutation: '%{fi}-%{ln}' },
      { permutation: '%{fn}-%{li}' },
      { permutation: '%{fi}-%{li}' },
      { permutation: '%{ln}-%{fn}' },
      { permutation: '%{ln}-%{fi}' },
      { permutation: '%{li}-%{fn}' },
      { permutation: '%{li}-%{fi}' },
      { permutation: '%{fi}%{mi}-%{ln}' },
      { permutation: '%{fn}-%{mi}-%{ln}' },
      { permutation: '%{fn}-%{mn}-%{ln}' },
      { permutation: '%{fn}_%{ln}' },
      { permutation: '%{fi}_%{ln}' },
      { permutation: '%{fn}_%{li}' },
      { permutation: '%{fi}_%{li}' },
      { permutation: '%{ln}_%{fn}' },
      { permutation: '%{ln}_%{fi}' },
      { permutation: '%{li}_%{fn}' },
      { permutation: '%{li}_%{fi}' },
      { permutation: '%{fi}%{mi}_%{ln}' },
      { permutation: '%{fn}_%{mi}_%{ln}' },
      { permutation: '%{fn}_%{mn}_%{ln}' }
    ])
    target = subject
    expect(target.email).to eq 'trodriguez@parallel6.com'
  end
end


