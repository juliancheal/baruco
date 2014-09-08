require 'littlewire'
require 'artoo'

connection :digispark, :adaptor => :littlewire, :vendor => 0x1781, :product => 0x0c9f
device :board, :driver => :device_info
device :led, :driver => :led, :pin => 1

work do
  every 1.second do
    led.toggle
  end
end