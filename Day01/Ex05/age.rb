#!/usr/bin/env ruby

print "Please tell me your age : "
age = gets.to_i

puts "You are currently " + age.to_s + " years old."
i = 1
while i <= 3
	inc = i * 10
	puts "In " + inc.to_s + " years, you'll be " + (inc + age).to_s + " years old."
	i += 1
end