require_relative 'plane'

class Airport 

  def initialize 
    @planes = []
  end
  
  def land(plane)
    fail 'Airport full' if @planes.count >= 20
    @planes << plane
  end

  def take_off(plane)
    fail 'no planes available' if @planes.empty?
    return 'it has left the airport'
  end

end