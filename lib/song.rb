require_relative "artist"
class Song
    attr_accessor :artist
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @artist = nil
      @@all << self
    end
    
    def self.all
      @@all
    end

    def artist_name
      @artist ? @artist.name : @artist
    end

    
end

