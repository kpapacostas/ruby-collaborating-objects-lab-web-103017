require 'pry'


class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(new_name)
    artist_new = @@all.find { |artist| artist.name == new_name }
    if artist_new == nil
      self.new(new_name)
    else
      artist_new
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
