hh = {}

loop do
	print 'Введите название товара: '
	title = gets.strip

	if title == 'stop'
		break
	end

	print 'Введите цену за единицу: '
	price = gets.strip.to_f

	print 'Введите кол-во товара: '
	quantity = gets.strip.to_f

	hh[title] = {}
	hh[title][price] = quantity
end

hh.each { |x| puts x }