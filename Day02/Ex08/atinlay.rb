#!/usr/bin/env ruby
vowels = ["a", "e", "i", "o", "u"]
if ARGV.size > 0
	ARGV.each do |word|
		pig = nil
		item = word.downcase
		vowels.each do |vowel_test|
			if vowel_test == item[0]
				pig = item + "-way"
			end
		end
		if not pig
			count = 0
			while (not pig) && (count < item.size)
				count += 1
				vowels.each do |const_test|
					if const_test == item[count]
						ending = item[0...count]
						beginning = item[count...item.size]
						pig = beginning + "-" + ending + "ay"
					end
				end
			end
		end
		if pig
			puts pig
		else
			puts item + "-ay"
		end
	end
else
	puts "none"
end


		