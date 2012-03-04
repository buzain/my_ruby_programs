require 'mongo'

db = Mongo::Connection.new('staff.mongohq.com', 10054).db("rubylearning")
auth = db.authenticate('user', 'user')

coll = db.collection("students")
doc = {:name => 'Manish', :dob => Time.now, :loves => ['english','marathi'], :weight => 62, :gender => 'm', :country => 'india'}
coll_id = coll.insert(doc)
