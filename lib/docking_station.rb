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
    fail "Bike Broken" unless @bikes.last.status
    @bikes.pop
  end

  def dock(bike, status=true)
    fail "No space available" if full?
    bike.status = status
    @bikes << bike
  end

  def bike_available?(bike)
    @bikes = bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
