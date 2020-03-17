# All passed

class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
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
    artist = Genre.new(name)
  end
end