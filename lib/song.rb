class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

  def name
    @name
  end

  def artists
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.key?(genre) == false
        genre_hash[genre] = 0
      end
      genre_hash[genre] += 1
    end
    return genre_hash
  end

  def artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.key?(artist) == false
        artist_hash[artist] = 0
      end
      artist_hash[artist] += 1
    end
    return artist_hash
  end
