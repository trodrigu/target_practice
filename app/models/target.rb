class Target < ActiveRecord::Base
  has_many :cadences
  validates :name, :business, presence: true
  validates_email_realness_of :email
end
