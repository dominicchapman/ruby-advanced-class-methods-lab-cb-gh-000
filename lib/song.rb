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
    # Song Class Methods .create_by_name instantiates and saves a song with a name property
    song = self.new
    song.name = song_name
    song.save
    song
  end

  def self.find_by_name(song_name)
    # Song Class Methods .find_by_name can find a song present in @@all by name
    Song.all.detect { |song| song.name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    # This method will accept a string name for a song and either return a
    # matching song instance with that name or create a new song with the
    # name and return the song instance.
    if !!find_by_name(song_name) ? find_by_name(song_name) : create_by_name(song_name)
  end

end
