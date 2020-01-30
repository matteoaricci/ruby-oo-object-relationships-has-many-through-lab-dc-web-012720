require_relative './genre.rb'
require_relative './song.rb'
require 'pry'

class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.find_all do |music| music.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
       art_gen = songs.map do |music| music.genre
        end
        art_gen
    end
end