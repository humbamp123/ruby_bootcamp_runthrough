#!/usr/bin/env ruby

array1 = [2,8,9,48,8,22,-12,2]
array2 = []
array1.each do |item|
	array2 << item + 2
end
p array1
p array2