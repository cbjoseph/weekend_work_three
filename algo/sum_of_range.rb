# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  value = 0
  if array[0] < array[1] == true
    value = array[0] 
  elsif array[0] > array[1] == true
    value = array[1] 
  end

  new_array = []
  50.times do 
    if value.between?(array[0], array[1]) == true
      new_array << value
      value = value + 1
    elsif value.between?(array[1], array[0]) == true
      new_array << value
      value = value + 1
    end
  end
  sum = 0
  new_array.each { |n| sum += n } 
  p sum
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end