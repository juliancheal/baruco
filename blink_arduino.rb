require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '/dev/ttyACM0' device :board, :driver => :device_info
device :led, :driver => :led, :pin => 13

work do
  every 1.second do
    led.toggle
  end
end