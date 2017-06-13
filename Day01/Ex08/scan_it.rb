#!/usr/bin/env ruby

if ARGV[0] && ARGV[1]
	find = ARGV[0]
	puts ARGV[1].scan(find).count
else
	puts none
end