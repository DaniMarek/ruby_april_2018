# We're going to create a simple method with one input. Our method will be called guess_number and the input will be our guess. There will be three possible outcomes to this method. 

# The user guessed correctly, return "You got it!"
# The guess was too high, return "Guess was too high!"
# The guess was too low, return "Guess was too low!"
# If you want to challenge yourself, try using unless instead of if as much as you can.

def guess_number guess
    number = 19
    return "You got it!" unless guess != number

    return "Guess was too high!" unless guess < number
    return "Guess was too low!" unless guess > number
end 

puts guess_number 19
puts guess_number 30
puts guess_number 4
