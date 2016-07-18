# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  base_word = base_word.split(//)
  mutation = mutation.split(//)
  match_mutation = []
  mutation.each do |letter|
    if base_word.include?(letter) == true
      match_mutation << letter
    end
  end
  if match_mutation.uniq == mutation.uniq
    true
  else 
    false
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end