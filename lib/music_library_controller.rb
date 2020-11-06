class MusicLibraryController

  def initialize(file_path = './db/mp3s')
    mi = MusicImporter.new(file_path)
    mi.import
  end
  def call
    puts "Welcome to your music library!"
  end
end
