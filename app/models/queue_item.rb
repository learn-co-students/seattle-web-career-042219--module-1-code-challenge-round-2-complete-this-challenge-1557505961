class QueueItem

@@all = []

  def initialize(viewer, movie, rating = nil)
    @@all << self
    @viewer = viewer
    @movie = movie
    @rating = rating
  end

  def self.all
    @@all
  end

end
