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
  	QueueItem.all.select do |item|
  		item.title == self
  	end
  end



end
