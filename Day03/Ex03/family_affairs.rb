#!/usr/bin/env ruby

def find_the_gingers hashs
	new_arr = Array.new
	hashs.each do |name, item|
		if item == :red
			new_arr << name
		end
	end
	return new_arr
end

Dupont_family = {
"matthew" => :red,
"mary" => :blonde,
"virginia" => :brown,
"gaetan" => :red,
"fred" => :red,
}

p find_the_gingers Dupont_family