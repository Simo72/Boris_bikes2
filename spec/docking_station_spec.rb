require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }
  it { is_expected.to respond_to :bike_available? }



  it "set capacity at point of new docking station" do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  describe '#release_bike' do
    let(:bike) { double :bike }

    it "raises error when no bikes available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it "'releases' a working bike" do
      allow(bike).to receive(:working?).and_return(true)
      allow(bike).to receive(:broken?)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

    it "does not 'releases' a broken bike" do
      allow(bike).to receive(:report_broken)
      allow(bike).to receive(:broken?).and_return(true)
      subject.dock(bike)
      bike.report_broken
      expect { subject.release_bike }.to raise_error "No working bikes available"
    end

  end

  describe '#dock' do
    let(:bike) { double :bike }
    it "Raises an error if at capacity" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock double(:bike) }
      expect { subject.dock double(:bike) }.to raise_error 'No space available'
    end

    it "docks something" do
      expect(subject.dock(bike)).to eq [bike]
    end

    it "checks if bikes within docking station" do
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

  it "returns the attribute of the docked bike" do
    bike = subject.dock double(:bike)
    expect(subject.bike_available?(bike)).to eq bike
  end

  it "raises an error" do
    expect { subject.bike_available?(bike) }.to raise_error(NameError)
  end

  it "checks if capacity is equal to DEFAULT CAPACITY when no argument passed" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end



end
