class Email < ActiveRecord::Base
  validates_email_realness_of :email
  belongs_to :target
  validates :email, presence: :unique
end
