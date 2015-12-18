class Target < ActiveRecord::Base
  has_many :cadences
  validates :name, :business, presence: true
end
