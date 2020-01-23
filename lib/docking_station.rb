require_relative 'bike'

class DockingStation 

   attr_reader :bike
 
   def initialize
    @bike = []

   end 

  def release_bike
    fail "no bikes available" unless @bike.empty?
    @bike.pop
  end 
  
  def bike_docked(bike)
   fail "Capacity reached" if @bike.count >= 20 
        @bike << bike 
  end 
end 





