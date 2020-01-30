class Song
    attr_reader :song
    attr_accessor :artist, :genre

    @@all = []
    def initialize(song_title, artist, genre)
        @song = song_title
        @artist = artist
        @genre = genre
        
        @@all << self
    end

    def self.all
        @@all
    end
end