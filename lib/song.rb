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


## class methods
def self.all
  @@all
end



end #end of class
