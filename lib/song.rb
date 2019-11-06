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
Song.new = split_array[1]
end

## class methods
def self.all
  @@all
end



end #end of class
