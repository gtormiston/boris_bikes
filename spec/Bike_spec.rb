require 'Bike'
require 'DockingStation'

describe Bike do
	bike = Bike.new
	station = DockingStation.new
			it { is_expected.to respond_to :working? }
end
