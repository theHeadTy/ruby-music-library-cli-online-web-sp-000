class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    self.class.all << self
  end
  
  def self.create(name)
    Artist.new(name)
  end


  def add_song(song)
  
    song.artist = self unless song.artist.nil?

    @songs << song unless songs.include?(song)
  
  end 
  
end