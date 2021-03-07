class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create   # instantiates a song with a name property
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)    # instantiates a song with a name property
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)   # instantiates and saves a song with a name property
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)    # can find a song present in @@all by name (FAILED - 1)
                                #  returns falsey when a song name is not present in @@all (FAILED - 2)
    self.all.find {|song| song.name == name }

  end

end
