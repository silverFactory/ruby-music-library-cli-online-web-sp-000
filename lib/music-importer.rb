require 'pry'
class MusicImporter
  attr_accessor :path, :files
  def initialize(filepath)
    @path = filepath
    all_files = Dir.entries(@path)
    # binding.pry
    @files = all_files.select{|f| f.length >= 4}
  end

end
