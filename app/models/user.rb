class User < ActiveRecord::Base
	has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true

  has_many :player_characters
end
