require_relative 'plane'

class Airport 

  attr_reader :plane
  
  def land(plane)
    @plane = plane
  end

  def take_off(plane)
    @plane = plane
    return 'it has left the airport'
  end

end