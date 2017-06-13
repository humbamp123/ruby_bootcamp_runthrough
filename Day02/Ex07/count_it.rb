#!/usr/bin/env ruby

if ARGV.size > 0
	puts "parameters : " + ARGV.size.to_s
	ARGV.each do |item|
		puts item + " : " + item.size.to_s
	end
else
	puts "none"
end