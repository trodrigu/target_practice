require 'rails_helper'

RSpec.describe Email, type: :model do
  it { is_expected.to validate_presence_of(:email) }
end
