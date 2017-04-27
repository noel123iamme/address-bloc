require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'
 
BlocRecord.connect_to('db/address_bloc.sqlite')
 
book = AddressBook.create(name: 'My Address Book')
 
puts 'Address Book created'
puts 'Entry created'
foo1 = Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
puts foo1
puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )

puts "Find ID = 1"
puts Entry.find(1)

puts "Find by"
puts Entry.find_by("name", "Foo One")

entry = Entry.find(3)
entry.name = "Bob"

entry2 = Entry.find(1)
entry2.name = "Joe"

Entry.save(entry)
