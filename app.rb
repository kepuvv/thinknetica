print 'Enter day: '
day = gets.strip.to_i

print 'Enter month: '
month = gets.strip.to_i

print 'Enter year: '
year = gets.strip.to_i

hh = 	{ 
		01 => 31, 
		02 => [28, 29], 
		03 => 31,
		04 => 30, 
		05 => 31, 
		06 => 30, 
		07 => 31, 
		08 => 31, 
		09 => 30, 
		10 => 31, 
		11 => 30, 
		12 => 31 
		}
