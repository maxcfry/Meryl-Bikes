require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  # I'd like to report a bike as broken when I return it.

  

  # it {is_expected.to respond_to :broken}

  # it "tells us a bike is broken" do
  #   station = DockingStation.new
  #   bike = Bike.new
  #   bike.report_broken
  #   expect(station.dock(bike)).to eq bike
  # end
  it 'can be reported broken' do
    subject.report_broken 

    expect(subject).to be_broken
  end


end

  