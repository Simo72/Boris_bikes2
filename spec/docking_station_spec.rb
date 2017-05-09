require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe DockingStation do
  it "'releases' an instance of the Bike class" do
    expect(subject.release_bike.class).to eq Bike
  end
end

describe DockingStation do
  it "'releases' a working bike" do
    expect(subject.release_bike.working?).to eq true
  end
end
