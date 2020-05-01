require 'pry'

class Artist
  attr_accessor :name, :artist

  @song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    title = Song.new(title)
    add_song(title)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.length
  end
end
