require 'pry'

class MP3Importer 

    @@songs = []
    def initialize filePath
        @filePath = filePath
    end

    def path
        @filePath
    end

    def files
        songArray = []
        songArray = Dir["#{@filePath}/**/*.mp3"]
        songArray.each do |song|
            21.times {song[0] = ""}
        end
        @@songs = songArray
        songArray
    end

    def import
        @@songs.each do |song|
            Song.new_by_file_name(song)
        end
    end
end