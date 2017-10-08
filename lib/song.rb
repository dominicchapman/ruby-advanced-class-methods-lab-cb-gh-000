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

  def self.new_by_name
    # Song Class Methods .new_by_name instantiates a song with a name property
    
  end

end
