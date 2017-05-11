require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No space available" if @bikes.count >= 20
    @bikes << bike
  end

  def bike_available?(bike)
    @bikes = bike
  end

  def full?
    true
  end
end
