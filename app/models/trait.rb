class Trait < ActiveRecord::Base
	has_and_belongs_to_many :homeworlds
	has_and_belongs_to_many :careers
	has_and_belongs_to_many :player_characters
end
