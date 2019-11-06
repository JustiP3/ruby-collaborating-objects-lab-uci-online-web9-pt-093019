class Song
attr_accessor :title
attr_reader :artist

def artist=(name)
@artist = name
@artist.add_song(self)
end

def initialize(title)
@title = title
end




end #end of class
