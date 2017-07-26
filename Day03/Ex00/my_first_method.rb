#!/usr/bin/env ruby

def upper str
	if str.size > 10
		return str.upcase
	end
end

if ARGV[0]
	puts upper ARGV[0]
else
	puts "none"
end