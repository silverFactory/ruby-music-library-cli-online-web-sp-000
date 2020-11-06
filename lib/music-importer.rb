require 'pry'
class MusicImporter
  attr_accessor :path, :files
  def initialize(filepath)
    @path = filepath
    all_files = Dir.entries(@path)
    @files = all_files.select{|f| f == "/\w+.mp3/"}
  end

end
