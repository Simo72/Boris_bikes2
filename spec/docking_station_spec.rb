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

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
 it { is_expected.to respond_to :bike }
end

describe DockingStation do
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end

describe DockingStation do
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end