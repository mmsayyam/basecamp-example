class User
	include Mongoid::Document
	include ActiveModel::SecurePassword

	field :email, :type => String
	field :password_digest, :type => String

	has_secure_password 
	# attr_accessor :email, :password, :password_confirmation
	validates :email, uniqueness: true
	
	def self.find_by_email(email)
		where(:email => email).first
	end
end
