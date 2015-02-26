class Homeworld < ActiveRecord::Base
	has_many :player_characters
	has_and_belongs_to_many :careers
	has_and_belongs_to_many :traits
end
