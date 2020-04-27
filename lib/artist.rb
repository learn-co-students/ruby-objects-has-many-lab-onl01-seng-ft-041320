require 'pry'

class Artist
    attr_accessor :name, :songs
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        add_song(new_song)
    end

    def self.song_count
        Song.all.size
    end
end