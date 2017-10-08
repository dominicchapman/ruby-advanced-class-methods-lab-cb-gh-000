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
    # Song Class Methods .create instantiates and saves the song, and it returns the new song that was created
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    # Song Class Methods .new_by_name instantiates a song with a name property
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    new_by_name
    song.save
  end

end
