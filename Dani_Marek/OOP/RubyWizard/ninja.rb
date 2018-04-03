 # Ninja should have a default stealth of 175
 # Ninja should have a steal method which, when invoked, attacks an object and increases the Ninjas health by 10
 # Ninja should have a get_away method which, when invoked, decreases its health by 15
require_relative 'human'
class Ninja < human
	def initialize
		super
		@stealth = 175
	end

	def steal
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
		end
		if @health < 100
			@health += 10
		end
	end

	def get_away
		@health -= 15
	end
end

ninja = Ninja.new
