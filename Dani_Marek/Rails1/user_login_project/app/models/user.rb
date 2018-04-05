class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	# we are validating that both the first_name and last_name fields are present and that their length is within the range 2 to 20
	validates_numericality_of :age, { greater_than:10, less_than: 150 }
	# requires the age to be at least 10 and below 150
	validates :email_address, presence: true
	# validates :email, uniqueness: { case_sensitive: false }
	# validates :email, format: { with: EMAIL_REGEX }
end
