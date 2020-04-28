
class Artist
  attr_accessor :name

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end

    def add_song(title)
      title.artist = self
    end

    def add_song_by_name(title)
      title = Song.new(title)
      add_song(title)
    end

    def self.song_count
      Song.all.length
    end


end 