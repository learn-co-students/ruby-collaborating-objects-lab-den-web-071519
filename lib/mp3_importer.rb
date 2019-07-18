class MP3Importer
  attr_accessor :path, :files

  # accepts a file path to parse mp3 files
  def initialize(path)
    @path = path
    @files = Dir[path + "/*"].each do |file|
      file.slice!(0..20)
    end
  end

  # creates songs from a filename
  def import
    @files.each do |file_name_mp3|
      Song.new_by_filename(file_name_mp3)
    end 

  end

end
