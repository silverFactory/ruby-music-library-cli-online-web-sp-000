class MusicLibraryController
  attr_accessor :file_path
  def initialize(file_path = './db/mp3s')
    @file_path = file_path
  end
end
