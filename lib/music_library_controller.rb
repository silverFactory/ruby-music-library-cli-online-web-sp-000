class MusicLibraryController

  def initialize(file_path = './db/mp3s')
    MusicImporter.new(file_path)
  end
  def call
    puts "Welcome to your music library!"
  end
end
