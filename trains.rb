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

	# станции в хэше
	def initialize(start_station, end_station)
		
		@stations = {}
		@stations[start_station] = 1
		@stations[end_station] = 1000
	end

	def add_station(station_name, position)
		@stations[station_name] = position
		
	end

	def del_station(station_name)
		@stations.delete(station_name)
		
	end

	def show_route
		(@stations.sort_by { |_,value| value }).each do |arr|
			puts arr[1]
		end
	end

end
