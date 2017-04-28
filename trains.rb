# 3 урок, Classes, def, начало диспетчер ЖД

class Train

	attr_accessor :num_carriage
	attr_accessor :speed
	attr_accessor :current_station


	attr_reader :route

	def initialize(num_carriage = 0, type_id)
		
		types = ['cargo', 'passenger']
		@type = types[type_id]
		@num_carriage = num_carriage
	end

	def go(speed)
		self.speed = speed
	end

	def stop
		self.speed = 0
	end

	def add_carriage
		if self.speed == 0
			self.num_carriage +=1
		else 
			puts 'Stop for this action'
		end
	end
	
	def del_carriage
		self.speed == 0 ? self.num_carriage -=1 : puts 'Stop for this action'
	end

	def get_route(route)
		@route = route
		@current_station = @route.key[1]
	end
# закончил где-то тут
	def go_to(station)
		self.route[station]
	end

	def current_station



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

	attr_reader :route
	attr_reader :name

	# станции в хэше
	def initialize(name, start_station, end_station)
		@name = name
		@route = {}
		@route[start_station] = 1
		@route[end_station] = @route.size + 1
	end

	def add_station(station_name, position)
		@route[station_name] = position
		@route[end_station] = @route.size + 1		
	end

	def del_station(station_name)
		@route.delete(station_name)
		@route[end_station] = @route.size + 1		
	end

	def show_route
		(@route.sort_by { |_,value| value }).each do |arr|
			puts arr[1]
		end
	end

end
