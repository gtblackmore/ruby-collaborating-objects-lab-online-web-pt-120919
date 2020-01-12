class Artist
  attr_accessor :name
 
  @@all = []
  @@songs = []
 
  def initialize(name)
    @name = name
    @@all << name
  end
  
  def self.all
    @@all
  end
  
  def add_song(song_name)
    song_name.artist = self
    @@songs << song_name
  end
  
  def songs
    @@songs
  end
  
  def find_or_create_by_name(name)
    if self.all.find{|a| a.name == name} == nil
      Artist.new(name)
    end
  end
        
  def print_songs
    @@songs.each do |song|
      puts song.name
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
end  
        
  
   



end