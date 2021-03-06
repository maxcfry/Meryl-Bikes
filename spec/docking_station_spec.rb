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

  it "raises an exception when a bike is added to a docking station with 20 bikes inside" do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { station.dock Bike.new }
    expect { station.dock Bike.new }.to raise_error("Station is full")
  end

  it "releases an already existing working bike" do 
    station = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    station.dock(bike1)
    station.dock(bike2)
    station.release_bike
    expect(station.release_bike).to eq bike1
  end

  it "has default capacity" do 
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end 
  # it "when new DockingStation is called, capacity can be specified" do
  #   expect(DockingStation.new(25)).to eq 25
  # end

  # I'd like docking stations not to release broken bikes
  # it "doesn't release broken bikes" do
  #   station = DockingStation.new
  #   bike = Bike.new
  #   station.dock(bike.broken)
  #   expect { station.release_bike }.to raise_error("No bikes available")
  # end
  it "doesn't release bike from docking station if bike is broken" do
    station = DockingStation.new
    bike1 = Bike.new
    bike1.report_broken 
    station.dock(bike1)
    expect { station.release_bike }.to raise_error("No bikes available")
  end



end
