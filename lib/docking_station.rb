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
    fail "No working bikes available" if  working_bikes.empty?
    @bikes.delete(working_bikes.pop)


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
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def working_bikes
    @bikes.reject{|bike| bike.broken?}
  end

end

