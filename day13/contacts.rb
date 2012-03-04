require 'mongo'

# connection
db = Mongo::Connection.new('staff.mongohq.com', 10055).db("contacts")
auth = db.authenticate('user', 'user')

puts "connected..." if auth

coll = db.collection("personal")

# insert data
contacts = []

contacts.push({ name: 'BuZain', mobile: '99999999'})
contacts.push({ name: 'BuReem', mobile: '99999999', home: '88888888'})

contacts.each { |contact| coll.insert(contact) }
 
