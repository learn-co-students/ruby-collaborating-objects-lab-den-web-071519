require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file)
        arty, song = file.split(' - ')
        new_song = Song.new(song)
        new_song.artist = Artist.find_or_create_by_name(arty)
        new_song.save
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
  end

      def save
        @@all << self
        self
    end

    # added methods to fix restructuring for these new tests?
    def self.find_by_artist(artist)
        Song.all.select do | song |
            song.artist == artist
        end
    end

    def self.all
        @@all
    end

end


# binding.pry