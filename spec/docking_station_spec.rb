require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it { is_expected.to respond_to :bike}
  
  # it { is_expected.to respond_to :dock_bike}

  # it "docks bike at docking station" do 
  #   bike = DockingStation.new 
  #   expect(bike.dock_bike(1)).to(eq(@docked_bike = 1))
  # end
end
