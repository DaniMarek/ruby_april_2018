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
			obj.health -= 10
			true
			# stating true will automatically return the boolean true (return not necessary)
		end
		false

	end
end
