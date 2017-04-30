require './trains.rb'

dom = RailwayStation.new 'Dom'
lenin = RailwayStation.new 'Lenin'
work = RailwayStation.new 'Work'
school = RailwayStation.new 'School'

route1 = Route.new 'Way to Work', dom, work
route1.add_station lenin, 2

route2 = Route.new 'Way to school', dom, work
route2.add_station school, 2

reno = Train.new 2, 1
reno.get_route route1

kia = Train.new 1, 0
kia.get_route route2

reno.go 50
kia.go 30

reno.go_to lenin
reno.stop
reno.add_carriage

dom.list
lenin.list
work.list
school.list

kia.speed
reno.speed

kia.go_to school
reno.go_to work

dom.list
lenin.list
work.list
school.list

kia.go_to work

dom.list
lenin.list
work.list
school.list