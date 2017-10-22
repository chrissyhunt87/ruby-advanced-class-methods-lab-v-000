class Song
  attr_accessor :name, :artist_name
  @@all = []

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

  def self.new_by_name(name)
    new_song = Song.new
    new_song.name = name
    new_song
  end

  def self.create_by_name(name)
    new_song = Song.new
    new_song.name = name
    Song.all << new_song
    new_song
  end

  def self.find_by_name(name)
    Song.all.detect {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    detected_song = Song.find_by_name(name)
    if detected_song == nil
      Song.create_by_name(name)
    else
      detected_song
    end
  end

end
