require 'pry'
class MP3Importer
attr_accessor :path, :files

def initialize(path)
@path = path
@files = []
end

def files
#path {|file| files << file}
binding.pry
end

end #end of class
