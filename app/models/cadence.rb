class Cadence < ActiveRecord::Base
  validates :permutation, uniqueness: true
end
