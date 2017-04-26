# 3 урок, Classes, def, начало диспетчер ЖД

class Train

end

class RailwayStation

	attr_reader :trains

	def initialize (name)
		@name = name
		@trains = []
	end

	def arrive_train (train)
		@trains << train
	end

	def send_train (train)
		@trains.delete(train)
end

class Route

end
