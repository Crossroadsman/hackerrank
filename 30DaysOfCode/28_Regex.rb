#!/bin/ruby

names = Array.new

N = gets.strip.to_i
for a0 in (0..N-1)
    firstName,emailID = gets.strip.split(' ')
    if ( emailID =~ /@gmail\.com/ )
        names << firstName
    end
end
names = names.sort
names.each { |x| puts x }
