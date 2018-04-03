# Wizard should have a default health of 50 and intelligence of 25
#  Wizard should have a method called heal, which when invoked, heals the Wizard by 10
#  Wizard should have a method called fireball, which when invoked, decrease the health of whichever object it attacked by 20

require_relative 'human'
class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end

	def heal
		if @health < 50
			@health += 10
	end

	def fireball
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
		end
	end
end
end