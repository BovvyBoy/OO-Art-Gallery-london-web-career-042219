class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting|painting.artist == self  }
  end

  def galleries
    paintings.map { |painting|painting.gallery }
  end

  def cities
    galleries.map { |gallery|gallery.city}
  end

  def self.total_experience
    total = Artist.all.map do |artist|
      artist.years_experience
    end
    total.sum
  end

  def paintings_per_year
    paintings.length.to_f / years_experience.to_f
  end

  def self.most_prolific
    all.sort_by{|artist| artist.paintings_per_year}.last
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
