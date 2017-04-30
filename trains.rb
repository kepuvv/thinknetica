# 3 урок, Classes, def, начало диспетчер ЖД

class Train

	attr_accessor :num_carriage
	attr_accessor :speed
	attr_accessor :current_station
	attr_accessor :next
	attr_accessor :previous

	attr_reader :route

	def initialize(num_carriage = 0, type_id)
		@speed = 0
		types = ['cargo', 'passenger']
		@type = types[type_id]
		@num_carriage = num_carriage
	end

	def go(speed)
		self.speed = speed
		puts "Текущая скорость поезда #{self.speed}."
	end

	def stop
		self.speed = 0
		puts "Поезд остановлен."
	end

	def add_carriage
		if self.speed == 0
			self.num_carriage +=1
		else 
			puts 'Остановите Поезд для добавления вагона.'
		end
	end
	
	def del_carriage
		if self.speed == 0 
			self.num_carriage -=1
		else
		 	puts "Остановите поезд."
		end
	end
# получает объект Route и хэш со станциями в этом объекте
	def get_route(route_name)
		@route = route_name.route
		@current_station = @route.key(1)
		puts "Поезд следует по маршруту #{route_name.name}"
		next_prev
	end

	def go_to(station)
		self.current_station = station
		next_prev
	end

	 def next_prev
	 	if self.route[@current_station] == 1	
	 		@next = @route.key(@route[current_station] + 1).name
	 		return puts "Следующая станция #{@next}"
	 	elsif self.route[@current_station] == @route.size
	 		@previous = @route.key(@route[current_station] - 1).name
	 		return puts "Следующая станция #{@next}"
	 	else
	 		@next = @route.key(@route[current_station] + 1).name
	 		@previous = @route.key(@route[current_station] - 1).name
	 		return puts "Следующая станция #{@next}, предыдущая #{@previous}"
	 	end
	 end
end

class RailwayStation

	attr_reader :trains
	attr_reader :name

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
end

class Route

	attr_reader :route
	attr_reader :name

	# станции в хэше
	def initialize(name, start_station, end_station)
		@name = name
		@route = {}
		@end_station = end_station
		@route[start_station] = 1
		@route[end_station] = @route.size
	end

	def add_station(station_name, position)
		@route[station_name] = position
		@route[@end_station] = @route.size		
	end

	def del_station(station_name)
		@route.delete(station_name)
		@route[@end_station] = @route.size		
	end

# тображает станции в маршруте оп порядку.
	def list
		# сортирует хэш по значениям, переводит в массив, элементами массива являются объекты станции
		(@route.sort_by { |_,value| value }).each_with_index do |arr,i|
			puts "#{i+1} - #{arr[0].name}"
		end
	end

end
