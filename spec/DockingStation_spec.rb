require 'DockingStation'
require 'Bike'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
 	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to(:bikes)}

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	describe '#dock' do
		it 'raises an error if the docking station is full' do
			20.times { subject.dock(Bike.new) }
			expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
		end
	end
end
