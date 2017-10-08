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
    !!find_by_name(song_name) ? find_by_name(song_name) : create_by_name(song_name)
  end

  def self.alphabetical
    # Song Class Methods .alphabetical returns all the song instances in alphabetical order by song name
    Song.all.sort_by { |song| song.name }
  end

  def self.new_from_filename(mp3)
    # Build a class constructor that accepts a filename in the format of
    # " - .mp3", for example "Taylor Swift - Blank Space.mp3".
    # The constructor should return a new Song instance with the song name
    # set to Blank Space and the artist_name set to Taylor Swift.
    song = self.new
    song.name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[1]
    song.artist_name = mp3.split(/[^a-zA-Z\s]|\s-\s/)[0]
    song
  end

  def self.create_from_filename(mp3)
    # The Song.create_from_filename class method should not only parse the
    # filename correctly but should also save the Song instance that was created.
    song = new_from_filename(mp3)
    song.save
  end

  def self.destroy_all
    # Should reset the state of the @@all class variable to an empty array
    # thereby deleting all previous song instances.
    Song.all.clear
  end
end
