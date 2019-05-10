class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def add_movie_to_queue(movie)
  	QueueItem.new(self, movie)
  end


  def queue_items
  	QueueItem.all.select do |item|
  		item.username == self
  	end
  end

  def queue_movies
	queue_items.select do |item|
		item.movie
	end
  end

  def rate_movie(username, rating)
  	queue_items
  end 

end