class Bike
  # attr_accessor :status

  # def initialize
  #   status = true
  # end

  def working?
    true
  end

  def report_broken
  	@broken = true
  end

  def broken?
  	@broken
  end

end





