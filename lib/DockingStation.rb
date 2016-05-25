require_relative 'Bike'

class DockingStation
	attr_reader :bike

	def release_bike
		Bike.new
	end

	# def bike(value)
	# 	@bike = value
	# end

	def dock(bike)
		@bike = bike
	end
end
