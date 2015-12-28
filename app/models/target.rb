class Target < ActiveRecord::Base
  validates_email_realness_of :email
  has_many :cadences
  validates :first_name, :last_name, :business, presence: true
end
