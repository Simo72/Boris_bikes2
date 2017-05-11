require './lib/docking_station.rb'

# puts "I can create a new Docking Station:"
# docking_station = DockingStation.new
# p docking_station
#
# puts "I can create a new bike"
# bike = Bike.new
# p bike
#
# puts "I can dock a bike"
# docking_station.dock(bike)
# p docking_station.bikes
#
# puts "I can dock up to 20 bikes"
# 19.times { docking_station.dock(Bike.new) }
# puts docking_station.bikes.count
#
# puts "I can't add more then 20 bikes"
# # p docking_station.dock(Bike.new)
#
# puts "I can release a bike"
# p docking_station.release_bike
#
# puts "I want to dock a broken bike"
# broken_bike = Bike.new
# docking_station.dock(broken_bike, false)
