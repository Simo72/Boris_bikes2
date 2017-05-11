require_relative 'bike'

class DockingStation
  attr_reader :bikes , :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No space available" if full?
    @bikes << bike
  end

  def bike_available?(bike)
    @bikes = bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

p docking_station = DockingStation.new()