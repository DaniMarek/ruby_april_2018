class User < ActiveRecord::Base
has_secure_password
EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
before_validation :lowercase_it
validates :name, :presence => true
validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

def lowercase_it
	self.email.downcase!
end

end
