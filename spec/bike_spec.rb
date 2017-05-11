require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}
  it { is_expected.to respond_to :report_broken}

it "returns true if bike is reported broken" do
	expect(subject.report_broken).to eq true
	end
it "Checks if bike is broken" do 
	bike= Bike.new
	bike.report_broken
	expect(bike.broken?).to eq true
	end


end
