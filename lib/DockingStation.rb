require_relative 'Bike'

class DockingStation
	attr_reader :bike

	def release_bike
		@bike
	end

	def dock(bike)
		@bike = bike
	end

	def bikes
			raise "There are no bikes available"
	end
end
