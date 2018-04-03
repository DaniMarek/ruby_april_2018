# Challenge
# Try the following methods at least once either on a separate Ruby file or on irb.

arr = [1,30,5,60,24,4]
# .at or .fetch
puts arr.at(2)
# .delete
puts arr.delete(30)
puts arr
# .reverse
puts arr.reverse
# .length
puts arr.length
# .sort
puts arr.sort
# .slice
puts arr.slice(3)
# .shuffle
puts arr.shuffle
# .join
puts arr.join
# .insert
puts arr.insert(3, 10)
# specify where (by index) and then the value, in this case, arr[3] = 10

# values_at() -> returns an array with values specified in the param
puts  arr.values_at(1,3,5)
# returns 30 60 4
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
puts arr.values_at(1,3,5).join(' and ')
# returns '30 and 60 and 4'

