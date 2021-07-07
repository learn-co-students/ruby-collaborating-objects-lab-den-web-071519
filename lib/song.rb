require 'pry'

class Song
    attr_accessor :artist, :name

    def initialize name
        @name = name
    end

    def self.new_by_filename name
        parsedSong = name.split(" - ")
        obj =  Song.new(parsedSong[1])
        obj.artist = Artist.find_or_create_by_name parsedSong[0]
        return obj
    end
end