require 'pry'
require './lib/song.rb'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find {|instance| instance.name}
      find_artist = @@all.find {|instance| instance.name}
    else
      create_artist = self.new(name)
    end
  end

  def print_songs
    self.songs.each {|instance| puts instance.name}
  end

end
