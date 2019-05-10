class QueueItem

    attr_accessor :viewer, :movie
    attr_reader :rating

    @@all = []

    def initialize(viewer, movie, rating=nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end
