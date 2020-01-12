class Artist
  attr_accessor :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song_name)
    song_name.artist = self
    @songs << song_name
  end
  
  def songs
    @songs
  end
  
  def find_or_create_by_name(name)
    if self.all.find{|a| a.name == name} == nil
      Artist.new(name)
    end
  end
        
        
        
  
   



end