require 'pry'

class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.size
    end

    def artist_name
        if self.artist != nil
            self.artist.name
        else
            nil
        end
    end


end