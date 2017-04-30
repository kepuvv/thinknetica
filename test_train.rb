require 'trains.rb'

dom = RailwayStation.new 'Dom'
lenin = RailwayStation.new 'Lenin'
work = RailwayStation.new 'Work'

route1 = Route.new 'Road to Work', dom, work
route1.add_station lenin, 2

reno = Train.new 2, 1