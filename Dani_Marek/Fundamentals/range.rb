# Challenge: Useful Methods
# Go ahead and try the following methods:

# .include?(value) => true or false
puts ("1".."55").include?("15")
# here, we are asking ruby if 15 is included in the range of 1 to 55. In this case, the result is true
puts ("a".."z").include?("D")
# in this case, ruby would return false because D is uppercase and not included in the lowercase alphabet range

# .last => returns the last object in range
puts (1..55).last(3)
# returns 53,54,55
puts (1...55).last(3)
# returns 52,53,54. 3 dots exclude the last number in range, 55

# .max => returns the maximum value in range
puts (1..55).max
puts (1...55).max
# .min => returns the minimum value in range
puts (1..55).min
puts (1...55).min