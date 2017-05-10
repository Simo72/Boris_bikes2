require './lib/docking_station.rb'

dock = DockingStation.new
bike = Bike.new
bike2 = Bike.new

# Tests whether I can dock multiple bikes
p 20.times { dock.dock(Bike.new) }
20.times { dock.dock(Bike.new) }
