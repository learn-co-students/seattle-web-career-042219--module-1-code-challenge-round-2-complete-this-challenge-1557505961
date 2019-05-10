require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

v1 = Viewer.new("u1")
v2 = Viewer.new("u2")
v3 = Viewer.new("u3")
v4 = Viewer.new('u4')
v5 = Viewer.new('u5')

m1 = Movie.new("t1")
m2 = Movie.new("t2")
m3 = Movie.new("t3")
m4 = Movie.new("t4")
m5 = Movie.new("t1")

q1 = QueueItem.new(v1, m1, 3)
q2 = QueueItem.new(v2, m2, 5)
q3 = QueueItem.new(v3, m3, 3)
q4 = QueueItem.new(v4, m4, 1)
q5 = QueueItem.new(v5, m1, 3 )

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
