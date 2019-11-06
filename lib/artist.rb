class Artist
attr_accessor :name
@@all = []

def initialize(name)
@name = name
save
end #end of initialize

def add_song(song_instance)
song_instance.artist = self
end #end of add_song method

def save
  @@all << self
end

def print_songs
songs.each {|instance| puts instance.title}
end

def songs
Song.all.select {|song_instance| song_instance.artist == self}

end

### Class Methods ###
def self.all
@@all
end #end of method

def self.find_or_create_by_name(artist_name)
@@all.detect {|artist_instance| artist_instance.name == artist_name} || new(artist_name)
end #end of method

#find by name

end #end of class
