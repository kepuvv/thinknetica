# 3 урок, Classes, def, начало диспетчер ЖД

class Train

end

class RailwayStation

	attr_reader :trains

	def initialize(name)
		@name = name
		@trains = []
	end

	def arrive_train(train)
		@trains << train
	end

	def send_train(train)
		@trains.delete(train)
end

class Route

	attr_reader :stations

	# над как-то придумать,чтобы станция оставалась последней
	def initialize(start_station, end_station)
		@start_station = start_station
		@end_station = end_station
		@stations = []
		@stations[0] = @start_station
		@stations[-1] = @end_station
	end

	def add_station(station, position)
		@stations[position] = station
	end
end
