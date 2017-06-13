#!/usr/bin/env ruby

array1 = [2,8,9,48,8,22,-12,2]
array2 = []
count = -1
array1.each do |item|
	count += 1
	next if count == 0 || count >= 6 
	array2 << item + 2
end
p array1
p array2