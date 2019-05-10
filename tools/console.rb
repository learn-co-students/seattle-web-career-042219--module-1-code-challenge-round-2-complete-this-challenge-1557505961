require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("u1")
v2 = Viewer.new("u2")
v3 = Viewer.new("u3")

m1 = Movie.new("t1")
m2 = Movie.new("t2")
m3 = Movie.new("t3")

i1 = QueueItem.new(v1, m2, 5)
i2 = QueueItem.new(v2, m1, 2)
i3 = QueueItem.new(v3, m3, 1)
i4 = QueueItem.new(v2, m2, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
