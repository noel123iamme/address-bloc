require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'
 
BlocRecord.connect_to('db/address_bloc.sqlite')

puts "\n/*** Find ID = 1 ***/"
puts Entry.find(1)

puts "\n/*** Find (Jane Smith) ***/"
puts Entry.find_by("name", "Jane Smith")

puts "\n/*** Find First ***/"
puts Entry.first

puts "\n/*** Find Last ***/"
puts Entry.last

puts "\n/*** Find All ***/"
Entry.all.each do |entry|
	puts "\n#{entry.to_s}"
end

puts "\n\n"
