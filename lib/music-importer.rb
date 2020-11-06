require 'pry'
class MusicImporter
  attr_accessor :path, :files
  def initialize(filepath)
    @path = filepath
    @files = Dir.glob(".mp3")
    binding.pry
  end

end
