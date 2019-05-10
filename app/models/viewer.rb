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

  def queue_items
    QueueItem.all.select {|q_i| q_i.viewer == self}
  end

  def queue_movies
    queue_items.map {|q_i| q_i.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end
end
