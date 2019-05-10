require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or 
#set up new object instances,
# so they will be available to test and play around with in your console


# `Movie.all`
 #+ returns an array of all `Movie`
movie1 = Movie.new("Mulan")
movie2 = Movie.new("Big Hero 6")
movie3 = Movie.new("007")


#Viewer.all`
#  + returns all of the viewers
viewer1 = Viewer.new("mulan_fan0")
viewer2 = Viewer.new("movie_areCool")
viewer3 = Viewer.new("ChEeSe")

#Viewer#add_movie_to_queue(movie)`
#  + this method should receive a `Movie` instance as its only argument and add it to the `
viewer1.add_movie_to_queue(movie1)
viewer1.add_movie_to_queue(movie2)
viewer2.add_movie_to_queue(movie3)
viewer3.add_movie_to_queue(movie1)

q1 = QueueItem.new("jim", "Mulan")


#  + this method should return an array of `QueueItem` 
#instances associated with this instance of `Viewer`.
 viewer1.queue_items

#Viewer#queue_movies`
#+ this method should return an array of `Movie` instances in the `Viewer`'s queue.
 viewer1.queue_movies

 #+ `Movie#queue_items`
 # + returns an array of all the `QueueItem` instances that contain this movie1
 movie1.queue_items


# + `QueueItem#viewer`
#   + returns the viewer associated with this `QueueItem`
q1.viewer

# `QueueItem#movie`
#   + returns the movie associated with this `QueueItem`
q1.movie


# Viewer`'s queue
# + `Viewer#rate_movie(movie, rating)`
viewer1.rate_movie(movie1, 5)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
