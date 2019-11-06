class Artist
attr_accessor :name, :songs
@@all

def initialize(name)
@name = name
@songs = []
@@all << self
end #end of initialize

def add_song(song_instance)
songs << song_instance
end #end of add_song method

def print_songs
songs.each {|instance| puts instance.title}
end

### Class Methods ###
def self.all
@@all
end #end of method

def self.find_or_create_by_name(artist_name)
artist = @@all.detect {|artist_instance| artist_instance.name == artist_name}
if artist
  artist
else
  new(artist_name)
end #end of if block
end #end of method


end #end of class
