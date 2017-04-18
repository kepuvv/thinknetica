print 'Enter day: '
day = gets.strip.to_i

print 'Enter month: '
month = gets.strip.to_i

print 'Enter year: '
year = gets.strip.to_i

days_in_m = [ 31, [28, 29], 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

def is_year_leap? year
	 year % 4 == 0 || year % 400 == 0
end

if is_year_leap? year
	puts "Високосный" 
else 
	puts "Не Високосный"
end

