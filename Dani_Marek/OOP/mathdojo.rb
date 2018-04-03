# Create a MathDojo class that will allow you to add and subtract numbers.
# Hint
# Practice method chaining
# Use the Splat Operator (splat operator)

# You can use the splat operator when you are not sure how many arguments your methods are going to passed in. Example:

 #  def splatting *params
	#  params
	# end
	# puts splatting(1).inspect # => [1]
	# puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
	# # => All the arguments are condensed into a single array.

class MathDojo
  attr_accessor :result
  def initialize
  	@result = 0
  	self
  end
  def add_all *args
  	@result += args.flatten.reduce(:+)
  	self
  end
  def subtract_all *args
  	@result -= args.flatten.reduce(:+)
  	self
  end

  def result
  	@result
  end

end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15

p challenge1, challenge2