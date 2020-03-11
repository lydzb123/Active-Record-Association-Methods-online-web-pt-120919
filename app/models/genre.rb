class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    id = 1
    all = []
    while id > 0
      do all << self.artists[id][:name]
      id += 1
      end
    all
    # return an array of strings containing every musician's name
  end
end
