# Challenge: Useful Methods
# Go ahead and try the following methods:

# .delete(key) => deletes and returns a value associated with the key
# e.g.  ruby h = {:first_name => "Coding", :last_name => "Dojo"} h.delete(:last_name) print h # => {:first_name => "Coding"}
h = {:first_name => "Dani", :last_name => "Marek"}
p h.delete(:first_name)
# .empty? => returns true if hash contains no key-value pairs
p h.empty?
# .has_key?(key) => true or false
p h.has_key?(:first_name)
# .has_value?(value) => true or false
p h.has_value? (:first_name)
p h