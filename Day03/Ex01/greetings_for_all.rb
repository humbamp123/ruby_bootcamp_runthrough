#!/usr/bin/env ruby

def greetings str = nil
	if str.is_a? String
		puts "Hello, " + str + "."
	elsif str
		puts "Error! That doesn't sound like a name."
	else
		puts "Hello, noble stranger."
	end
end

greetings "lucie"
greetings
greetings 22