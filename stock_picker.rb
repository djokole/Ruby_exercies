prices = []
10.times do
	price = Random.new.rand(20)
	prices.push(price)
end
puts prices

def stock_picker prices
	if prices.is_a?(Array)
		lowest_cost = prices.min
		lowest_index = prices.index(prices.min)
		if lowest_index == -1
			prices.pop
			lowest_cost = prices.min
			lowest_index = prices.index(prices.min)
		end
		#new_array is the array whose indexs are higher the the minimal price
		new_prices = prices[lowest_index..-1]
		highest_cost = new_prices.max
		#waiting_days is the number of days from buying until sellig
		waiting_days = new_prices.index(new_prices.max) + 1
		buying_day = lowest_index + 1
		puts 'Your best option is to buy on day number ' + buying_day.to_s + ' and sell after ' + waiting_days.to_s + ' days!' 
	else
		puts 'Not valid input'
	end
end

stock_picker(prices)