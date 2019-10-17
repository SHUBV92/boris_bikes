require 'docking_station'
require 'bike'

describe DockingStation do 

  it { is_expected.to respond_to :release_bike }

describe "#Release Bike" do
  it('releases working bikes') do 
    bike = Bike.new
    subject.bike_docked(bike)
    expect(subject.release_bike).to be_working
  end 
end 

describe "#Docks a bike" do 
  it 'docks a bike' do 
    bike = Bike.new
    #subject.bike_docked(bike)
    expect(subject.bike_docked(bike)).to eq bike
  end 
end 

describe "#raise error" do
  it 'station does not release bike if no bikes' do
    expect { subject.release_bike }.to raise_error "no bikes available"
  end
end
 
  describe "#Limit Capacity" do
  it 'station does not release bike if no bikes' do
    subject.bike_docked(Bike.new)
        expect { subject.bike_docked(Bike.new) }.to raise_error "Capacity reached"
  end
 end
end