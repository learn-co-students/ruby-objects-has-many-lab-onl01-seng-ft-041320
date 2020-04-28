# require "pry"
class Artist
  #artist class must be initialized with a name
  attr_accessor :name


  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self #takes the song.artist and points it to this instance of the song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
    Song.all.collect{|song| song.artist_name}.count
  end

end
# binding.pry
