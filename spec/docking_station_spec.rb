require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases a working bike" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it { is_expected.to respond_to :bike}

  it "docks bike at docking station" do 
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to(eq(bike))
  end

  it "shows a docked bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.bike).to eq bike
  end

  it "won't release bike when none are available and throws an exception" do
    station = DockingStation.new
    
    expect { station.release_bike }.to raise_error("No bikes available")

  end

  it "raises an exception when a bike is added to a docking station with 1 bike inside" do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error("Station is full")
  end

end
