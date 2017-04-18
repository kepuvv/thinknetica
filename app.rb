print 'Enter day: '
day = gets.strip.to_i

print 'Enter month: '
month = gets.strip.to_i

days_in_m = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

unless 	day >= 1 && day <= days_in_m[month - 1]
		puts 'Enter correct date'
		exit
end

def is_year_leap? year
	 year % 4 == 0 || year % 400 == 0
end

print 'Enter year: '
year = gets.strip.to_i

if year > 1 && year < 3000
	leap = is_year_leap? year
else 
	puts 'Введите корректный год'
end

days_in_m[1] = 29 if leap

day_count = 0
x = 0

while x < month - 1
		day_count += days_in_m[x]
		x += 1	
end

day_count += day

puts "Количество дней от начала года #{day_count}"

if leap
	puts 'Год високосный'
else
	puts 'Год не високосный'
end
