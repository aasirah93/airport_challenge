require_relative 'plane'

class Airport 

  def initialize 
    @planes = []
  end
  
  def land(plane)
    fail 'Airport full' if full?
    @planes << plane
  end

  def take_off(plane)
    fail 'no planes available' if empty?
    return 'it has left the airport'
  end

  private

  def full?
    @planes.length >= 20
  end

  def empty?
    @planes.length == 0
  end

end