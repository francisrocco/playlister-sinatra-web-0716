class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.downcase.split.join("-")
  end

  def self.find_by_slug(slug)
    artist_to_match = slug.split("-").join(" ")
    Artist.all.find { |artist| artist.name.downcase == artist_to_match }
  end

end
