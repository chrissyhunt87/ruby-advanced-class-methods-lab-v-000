class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = Song.new
    Song.all << new_song
    new_song
  end

  def new_by_name(name)
    new_song = Song.new(name)
    Song.all << new_song
    new_song
  end

end
