class QueueItem
  attr_accessor :username, :title, :rating

  @@all = []

  def initialize(username, title)
    @username = username
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def viewer
  	@@all.select do |item|
  		item.username == username
  	end
  end
  
  def movie
  	@@all.select do |item|
  		item.title == title
  	end
  end


end

