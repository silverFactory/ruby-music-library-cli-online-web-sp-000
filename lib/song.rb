class Song
#  extend Concerns::Findable
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  def initialize(name, artist="", genre="")
    @name = name
    if genre != ""
      self.genre= genre
    end
    if artist != ""
      self.artist= artist
    end
  end
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def self.destroy_all
    @@all = []
  end
  def self.create(name)
    song = Song.new(name).tap do |s|
      s.save
    end
  end
end
