#!/usr/bin/env ruby
print "What you gotta say?: "
loopit = true
while loopit
	input = gets.chomp
	if input == "STOP!"
		break
	else
		print "I got that! Anything else?: "
	end
end
