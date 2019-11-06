class Song
attr_accessor :name, :artist
@@all = []

def initialize(title)
@name = title
save
end

def save
  @@all << self
end



## class methods
def self.all
  @@all
end

def self.new_by_filename(filename)
split_array = filename.split(" - ")
new_song = Song.new(split_array[1])

new_song.artist = Artist.find_or_create_by_name(split_array[0])
new_song
end


end #end of class
