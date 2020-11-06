require 'pry'
class MusicImporter
  attr_accessor :path, :files
  def initialize(filepath)
    @path = filepath
    all_files = Dir.entries(@path)
    @files = all_files.collect{|f| f == "/\wmp3/"}
  end

end
