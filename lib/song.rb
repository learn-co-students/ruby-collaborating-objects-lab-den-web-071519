class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # ERRORS!! THIS actually works. The spec is wrong.

  # def self.new_by_filename(file_name)
  #
  #   song_name = file_name.split(" - ")[1]
  #   artist_name = file_name.split(" - ")[0]
  #
  #   new_song = Song.new(song_name)
  #   new_song.artist = Artist.find_or_create_by_name(artist_name)
  #
  # end

end
