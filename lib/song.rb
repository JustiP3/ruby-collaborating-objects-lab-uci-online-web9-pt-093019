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
Artist.find_or_create_by_name(split_array[0]).add_song(new_song)
end

## class methods
def self.all
  @@all
end



end #end of class
