#!/usr/bin/env ruby
if ARGV.size == 1
	num = ARGV[0].scan("z").count
	if num > 0
		while num > 0
			print "z"
			num -= 1
		end
		puts
	else
		puts "none"
	end
else
	puts "none"
end