require 'DockingStation'
require 'Bike'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
 	it { is_expected.to respond_to(:dock).with(1).argument }

	it 'releases working bikes' do
		bike = subject.release_bike
	  	expect(bike).to be_working
	end

	it { is_expected.to respond_to(:bike)}

	describe '#release_bike' do
		it 'releases a bike' do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end
	end

	it 'should raise an error if no bikes are available' do
		expect { subject.bikes < 1 }.to raise_error("There are no bikes available")
	end
end
