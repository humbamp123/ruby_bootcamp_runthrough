#!/usr/bin/env ruby
require 'net/http'
require 'json'

user_token = "e8zRWs3eVUZn-wGvqpnm"
save = 2
while true
	uri = URI("http://btc42.42.us.org/value.json\?user_token=#{user_token}")
	res = Net::HTTP.get_response(uri)
	# puts res.body if res.is_a?(Net::HTTPSuccess)
	thing = []
	nums = []
	buy_sell = nil
	array = JSON.parse(res.body)
	array.each do |item, value|
		if value.is_a? Array
			value.each do |item|
				thing << item["value"]
			end
		else
			nums << value
		end
	end
	currentbtc_cost = nums[0].to_i
	diff = nums[1].to_i
	current_money = nums[2].to_i
	current_btc = nums[3].to_i
	puts diff.to_s + " " + save.to_s + " " + thing[thing.size - 1].to_s
	# get = gets.chomp
	if current_money == 2147483647
		buy_sell == nil
	elsif current_money < 2147483647 && currentbtc_cost + current_money > 2147483647
		buy_sell = "buy"
	else
		buy_sell = "sell"
	end
	# puts current_money.to_s + " " + currentbtc_cost.to_s
	puts buy_sell
	if buy_sell
		if buy_sell == "buy"
			amount = 2
			# puts currentbtc_cost.to_s + " why " + current_money.to_s
			# amount = current_money / currentbtc_cost
			# save = currentbtc_cost
		elsif buy_sell == "sell"
			amount = 1
		end
		puts "It works and you " + buy_sell + " " + currentbtc_cost.to_s + " " + amount.to_s
		uri = URI("http://btc42.42.us.org/exchange")
		res = Net::HTTP.post_form(uri, :user_token => user_token, :btc_amount => amount, :kind => buy_sell)
		puts res.body if res.is_a?(Net::HTTPSuccess)
	end
end