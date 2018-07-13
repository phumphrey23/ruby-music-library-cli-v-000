class Artist < Base

  attr_reader :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      song.artist = self unless song.artist
      songs << song unless songs.include?(song)
    end

    def genre
      songs.collect{ |song| song.genre }.uniq
    end

end
