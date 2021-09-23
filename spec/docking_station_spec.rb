require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases a working bike" do
    bike = subject.release_bike
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
end
