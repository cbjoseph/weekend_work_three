class TV
  attr_reader :power, :volume, :channel
  attr_writer :power, :volume, :channel
  def initialize(tv_options)
    @power = tv_options[:power]
    @volume = tv_options[:volume]
    @channel = tv_options[:channel]
  end
end

class Remote < TV
  attr_reader :power, :volume, :channel
  attr_writer :channel

  def toggle_power
    if @power == false
      @power = true
    else
      @power = false
    end 
  end

  def increment_volume
    @volume = @volume + 1
  end

  def decrement_volume
    @volume = @volume - 1
  end

  def set_channel(channel)
    @channel = channel
  end
end

tv = Remote.new(power: false, volume: 5, channel: 23)
puts "Testing toggle_power..."
puts "Your result is..."
result = tv.toggle_power
puts result

if result == true
  puts "Pass!"
else
  puts "F"
end

puts "Testing increment_volume..."
puts "Your result is..."
result = tv.increment_volume
puts result

if result == 6
  puts "Pass!"
else
  puts "F"
end

puts "Testing decrement_volume..."
puts "Your result is..."
result = tv.decrement_volume
puts result

if result == 5
  puts "Pass!"
else
  puts "F"
end

puts "Testing set_channel..."
puts "Your result is..."
result = tv.set_channel(30)
puts result

if result == 30
  puts "Pass!"
else
  puts "F"
end
# p tv.set_channel(14)
# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)