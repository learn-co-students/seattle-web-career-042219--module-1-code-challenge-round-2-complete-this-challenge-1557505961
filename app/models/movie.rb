class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|q_i| q_i.movie == self}
  end

  def viewers
    queue_items.map {|q_i| q_i.viewer}
  end

  # def rate_movie(viewer, rating = (1..5))
  #   QueueItem.new(viewer, self, rating)
  # end

end