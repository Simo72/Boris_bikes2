require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }
  it { is_expected.to respond_to :bike_available? }
  it { is_expected.to respond_to :full?}
  it { is_expected.to respond_to :empty?}

  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises error when no bikes available" do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end

    it "'releases' a working bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike.working?).to eq true
    end
  end

  describe '#dock' do
    it "Raises an error if at capacity" do
      20.times { subject.dock(Bike.new) }
      expect {subject.dock(Bike.new)}.to raise_error 'No space available'
    end

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
  end

  it "returns the attribute of the docked bike" do
    bike = Bike.new
    expect(subject.bike_available?(bike)).to eq bike
  end

  it "raises an error" do
    expect { subject.bike_available?(bike) }.to raise_error(NameError)
  end

  it 'checks to see if the dock is full' do
    19.times { subject.dock(Bike.new) }
    expect(subject.full?).to eq false
  end

  it 'checks to see if the dock is empty' do
    
    expect(subject.empty?).to eq true
    bike = Bike.new
    subject.dock(bike)
    expect(subject.empty?).to eq false
  
  end

end
