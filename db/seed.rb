require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'
 
BlocRecord.connect_to('db/address_bloc.sqlite')
 
puts "\nCreate My Address Book"
book = AddressBook.create(name: 'My Address Book')
 
puts 'Address Book created'
puts 'Entry created'
puts Entry.create(address_book_id: book.id, name: 'Star Lord', phone_number: '369-825-0147', email: 'star_lord@guardians.com' )
puts Entry.create(address_book_id: book.id, name: 'Luke Skywalker', phone_number: '111-111-1111', email: 'luke.skywalker@rebels.com' )
puts Entry.create(address_book_id: book.id, name: 'Jack N. Jill', phone_number: '222-222-2222', email: 'jack.jill@rhymes.com' )
puts Entry.create(address_book_id: book.id, name: 'Jane Smith', phone_number: '321-456*7890', email: 'jane.smith@cia.com' )
puts Entry.create(address_book_id: book.id, name: 'John Doe', phone_number: '987-654-3210', email: 'john_doe@morgue.com' )
puts Entry.create(address_book_id: book.id, name: 'Tom Riddle', phone_number: '147*852-9630', email: 'tom_riddle@hogwarts.com' )



