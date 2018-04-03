# In this assignment, we are going to create a Human class.
# The human class should have 4 attributes: strength, intelligence, stealth, and health.
#  Give the human a default value of 3 for strength, stealth and intelligence. Health should have a default value of 100.
#  Add a new method called attack, which when invoked, should attack another object (i.e., decrease its health) if the object it is attacking inherits from the Human class. Hint: you can check ancestors of a object by using .class.ancestors
class Human
	attr_accessor :health, :strength, :intelligence, :stealth

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 5
		end
	end
end

