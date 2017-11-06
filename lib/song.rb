require 'pry'

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_name = file_name.split(' - ')
    new_song = Song.new(new_name[1])

    artist = Artist.find_or_create_by_name(new_name[0])
    artist.add_song(new_song)
    new_song 
  end

  def artist_name
    Artist.new(self)
  end

end
