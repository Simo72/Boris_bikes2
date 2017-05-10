require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail ("No bikes available") if !@bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  def bike_available?(bike)
    @bike = bike
  end

end
