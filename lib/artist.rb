class Artist < Base

  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      song.artist = self unless song.artist
      songs << song unless songs.include?(song)
    end

    def genres
      songs.collect{ |s| s.genre }.uniq
    end

end
