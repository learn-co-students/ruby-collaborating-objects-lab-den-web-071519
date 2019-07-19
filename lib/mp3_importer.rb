class MP3Importer
    attr_accessor :path
    attr_writer :files

    def initialize(path)
        @path = path
        @all = []
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |song| song.gsub("#{path}/", "") } # Need more study on this topic/ referencing dictionaries in general
    end

    def import
        files.each {|file| Song.new_by_filename(file)}
    end
end