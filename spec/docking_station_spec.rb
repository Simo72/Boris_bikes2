require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bike }
  it { is_expected.to respond_to :bike_available? }

  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises error when no bikes available" do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end
  end


  it "'releases' a working bike" do
    expect(subject.release_bike.working?).to eq true
  end

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "returns the attribute of the docked bike" do
    bike = Bike.new
    expect(subject.bike_available?(bike)).to eq bike
  end

  it "raises an error" do
    expect { subject.bike_available?(bike) }.to raise_error(NameError)
  end
end
