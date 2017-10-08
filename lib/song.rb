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

end
