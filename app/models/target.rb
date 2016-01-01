class Target < ActiveRecord::Base
  has_many :cadences
  has_many :emails, dependent: :destroy
  validates :first_name, :last_name, :business, presence: true
  validate :generate_email

  def generate_email
    errors.add(:email, "Email missing") if self.emails.blank?
  end
end
