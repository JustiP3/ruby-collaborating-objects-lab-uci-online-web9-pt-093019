require 'pry'
class MP3Importer
attr_accessor :path

def initialize(path)
@path = path
end

def files
#path {|file| files << file}
#binding.pry
Dir.children(path)
end

end #end of class
