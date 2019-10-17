require_relative 'bike'

class DockingStation 

   attr_reader :bike
 
   def initialize
    @bike 
   end 

  def release_bike
    fail "no bikes available" unless @bike
    @bike
  end 
  
  def bike_docked(bike)
   fail "Capacity reached" if  @bike
     @bike = bike 
  end 
end 





