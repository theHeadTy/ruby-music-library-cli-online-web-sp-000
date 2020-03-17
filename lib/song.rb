class Song
  
  attr_accessor :name, :artist
  
  @@all = []
    
  def initialize(name, artist = nil)
    @name = name
    self.class.all << self
    
    @artist = artist
  
  end
  
  def artist=(name)

    if !name.nil?
      name.add_song(self)
    end
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def self.create(name)
    Song.new(name)
  end
  
end