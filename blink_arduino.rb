require 'artoo'

connection :firmata, :adaptor => :firmata, :port => '/dev/ttyACM0' device :board, :driver => :device_info
device :led, :driver => :led, :pin => 13

work do
  puts "Firmware name: #{board.firmware_name}"
  puts "Firmware version: #{board.version}"

  every 1.second do
    led.toggle
  end
end