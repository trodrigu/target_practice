class Target < ActiveRecord::Base
  has_many :cadences
  has_many :emails
  validates :first_name, :last_name, :business, presence: true
  validate :generate_email

  def generate_email
    errors.add("Must have email") if self.emails.blank?
  end
end
