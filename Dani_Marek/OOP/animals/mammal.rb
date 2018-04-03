# Create a file mammal.rb. In this file, create a Mammal Class. A mammal should have a default health attribute with value of 150. Also add a method called display_health, which when invoked, prints the health of the Mammal.

class Mammal
	attr_accessor :health
	def initialize
		@health = 150
		self
	end
	def display_health
		p @health
		self
	end
end