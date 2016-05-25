require 'DockingStation'
require 'Bike'

describe DockingStation do
	it { is_expected.to respond_to :release_bike }
 	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to(:bike)}

	describe '#release_bike' do
		it 'releases a bike' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end
end
