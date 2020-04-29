class Artist
    attr_accessor :name, :song
    
    def initialize(name)
        @name = name
    end
    def songs
        #we need to go to the artist class, go voer every instance of an office that the
        #the artist class, and ask ,, which of these offices belong to me?
        Song.all
    end
    
    def add_song(song)
        song.artist = self
        
    end

    def add_song_by_name(name)
       song = Song.new(name)
       add_song(song)
    end

    def self.song_count
        Song.all.count
    end
    
end