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
    if id > 0
      all << self.artists[id][:name]
      id += 1
    else
    end
    all
    # return an array of strings containing every musician's name
  end
end
