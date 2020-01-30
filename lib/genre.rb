require_relative './song.rb'
class Genre
    attr_reader :genre
    @@all = []

    def initialize(genre)
        @genre = genre

        @@all << self
    end

    def name
        self.genre
    end

    def songs
        Song.all.find_all do |music| music.genre == self
        end
    end

    def self.all
        @@all
    end

    def artists
        songs.map do |music| music.artist
        end
    end
end