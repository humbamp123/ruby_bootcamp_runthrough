#!/usr/bin/env ruby

def great_births women
	women.each do |nickname, name_birth|
		puts name_birth.fetch(:name) + " is a great person born in " + name_birth.fetch(:year_of_birth)
	end
end

women_in_science = {
:ada => { :name => "Ada Lovelace", :year_of_birth => "1815" },
:cecilia => { :name => "Cecila Payne", :year_of_birth => "1900" },
:lise => { :name => "Lise Meitner", :year_of_birth => "1878" },
:grace => { :name => "Grace Hopper", :year_of_birth => "1906" }
}

great_births women_in_science