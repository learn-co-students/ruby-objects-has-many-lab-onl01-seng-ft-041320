class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.map {|song| song if song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    Song.new(name)
    Song.new(name).artist = self
  end

  def self.song_count
    Song.all.select {|song| song.artist}.length
  end
end
