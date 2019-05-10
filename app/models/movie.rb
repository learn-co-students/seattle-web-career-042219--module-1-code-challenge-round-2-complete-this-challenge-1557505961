class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.queue_items
    QueueItem.all.select do |item|
      item.movie == self
    end
  end
    #+ returns an array of all the `QueueItem` instances that contain this movie

  def viewers

    QueueItem.all.select do |item|
      QueueItem.movie == self
    end
    #+ returns an array of all of the `Viewer`s with this `Movie` instance in their queue
  end

  def average_rating
    #+ returns the average of all ratings for this instance of `Movie`
    ary = queue_items.collect do |item|
      item.rating
    end
    ary.sum/ary.count
  end

  def self.highest_rated
    #+ returns the instance of `Movie` with the highest average rating
  end
end
