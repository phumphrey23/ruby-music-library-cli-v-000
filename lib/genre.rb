class Genre < Base

  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      song.genre = self unless song.genre
      songs << song unless songs.include?(song)
    end

  def artists
      songs.collect{ |song| song.artist }.uniq
    end

end
