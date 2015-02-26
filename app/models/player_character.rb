class PlayerCharacter < ActiveRecord::Base
	has_one :homeworld
	has_one :career
	has_and_belongs_to_many :items
	has_many :identities
	validates :homeworld, presence: true
	validates :class, presence: true
end
