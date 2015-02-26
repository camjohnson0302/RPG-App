class Career < ActiveRecord::Base
	attr_accessor :name,:description

	has_many :player_characters
	has_and_belongs_to_many :homeworlds
	has_and_belongs_to_many :items
	has_and_belongs_to_many :traits
end
