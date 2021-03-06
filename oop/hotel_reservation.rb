# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

puts "TESTING room_number..."
puts
hotel = HotelReservation.new(customer_name: "Julie", date: "July, 3", room_number: 3)

hotel.room_number = 4
result = hotel.room_number
if result == 4
  puts "PASS!"
else
  puts "F"
end

puts "Testing add_a_fridge method..."

hotel.add_a_fridge
if hotel.amenities == ["fridge"]
  puts "PASS!"
else
  puts "F"
end

puts "Testing add_a_crib method..."

hotel.add_a_crib
if hotel.amenities == ["fridge", "crib"]
  puts "PASS!"
else
  puts "F"
end

puts "Testing add_a_custom_amenity method..."

hotel.add_a_custom_amenity("complimentary breakfast")
if hotel.amenities == ["fridge", "crib", "complimentary breakfast"]
  puts "PASS!"
else
  puts "F"
end

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

