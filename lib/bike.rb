class Bike
  attr_accessor :status

  def initialize
    status = true
  end

  def working?
    status
  end
end
