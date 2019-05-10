require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


##view objects
laura = Viewer.new("Laura")
kev = Viewer.new("Kev")
sarah = Viewer.new("Sarah")
tyler = Viewer.new("Tyler")

##moview objects
goodfellas = Movie.new("Goodfellas")
doctor_strange = Movie.new("Doctor Strange")
beauty_beast = Movie.new("Beauty and the Beast")
pulp_fiction = Movie.new("Pulp Fiction")
resevoir_dogs = Movie.new("Resevoir Dogs")


##queue objects
q1 = QueueItem.new(laura, goodfellas, 5)
q2 = QueueItem.new("Kev", "Goodfellas", 3)
q3 = QueueItem.new("Tyler", "Doctor Strange", 2)
q4 = QueueItem.new("Sarah", "Beauty and the Beast", 2)
q5 = QueueItem.new("Laura", "Pulp Fiction", 4)
q6 = QueueItem.new("Kev", "Resevoir Dogs", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
