require 'docking_station'
require 'bike'

describe DockingStation do 

  dockingstation = DockingStation.new

  it { is_expected.to respond_to :release_bike }


describe "#Release Bike" do
  it('releases working bikes') do 
    bike = Bike.new
    dockingstation.bike_docked(bike)
    expect(dockingstation.release_bike).to be_working
  end 
end 



describe "#bike_docked" do 
  it 'Bike has been docked' do
    
    bike = Bike.new
    dockingstation.bike_docked(bike)
    expect(dockingstation.bike.length).to eq 1
  end 


# describe "#bike_docked" do 
# it 'raises an error when full' do 
#   20.times{subject.bike_docked(Bike.new) }
#   expect { subject.bike_docked(Bike.new) }.to raise_error "DockingStation"
# end 



  it 'station does not release bike if no bikes' do
    expect { dockingstation.release_bike }.to raise_error "no bikes available"
  end

 
  
  it 'station does not release bike if no bikes' do
    dockingstation.bike_docked(Bike.new)
        expect { dockingstation.bike_docked(Bike.new) }.to raise_error "Capacity reached"
  end
 end   
end