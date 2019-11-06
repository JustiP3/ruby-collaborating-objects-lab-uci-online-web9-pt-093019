class Song
attr_accessor :title, :artist
@@all = []

def initialize(title)
@title = title
save
end

def save
  @@all << self
end

def new_by_filename(filename)
split_array = filename.split(" - ")
new_song = Song.new(split_array[1])

new_song.artist = Artist.find_or_create_by_name(split_array[0])
end

## class methods
def self.all
  @@all
end



end #end of class
