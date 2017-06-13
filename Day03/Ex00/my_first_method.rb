#!/usr/bin/env ruby

if ARGV[0]
	ARGV.reverse.each do |item|
		puts item
	end
else
	puts "none"
end