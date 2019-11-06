class Song
attr_accessor :title, :artist
@@all = []

def initialize(title)
@title = title
end

def all
  @@all
end



end #end of class
