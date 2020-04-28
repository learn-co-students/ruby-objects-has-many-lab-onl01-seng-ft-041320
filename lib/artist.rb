require 'pry'
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name 
    @songs = []
  end 
  def songs
    Song.all.select{|song| song.artist == self} 
  end
  def add_song(song)
    song.artist = self
  end 

  def add_song_by_name(name)
    name = Song.new(name)
    add_song(name)
  end
  def self.song_count 
    Song.all.length
  end
end

