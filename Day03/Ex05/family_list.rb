#!/usr/bin/env ruby
# class Hash
# 	def <<(k,v)
# 		self.store(k,v)
# 	end
# end
family = {}
while 1
	print "Hello, what is someone's name?: "
	names = gets.chomp
	if names == "DONE"
		break
	end
	print "And who is that person to you?: "
	fam = gets.chomp.to_sym
	family.store(fam, names)
end
puts family
