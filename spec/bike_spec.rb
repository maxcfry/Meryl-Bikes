require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  # I'd like to report a bike as broken when I return it.

  

  # it {is_expected.to respond_to :broken}

  # it "tells us a bike is broken" do
  #   station = DockingStation.new
  #   bike = Bike.new
  #   expect(station.dock(bike.broken)).to eq "You have returned a broken bike"
  # end

end

  