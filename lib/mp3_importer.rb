require 'pry'

class MP3Importer

  attr_reader :path, :files

  @@all = []

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(@path)[2..-1]
  end

  def self.all
    @@all
  end

  def import
    new_songs = @files.map do |file|
      Song.new_by_filename(file)
    end
  end


end
