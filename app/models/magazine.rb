require 'pry'

class Magazine
  attr_accessor :name, :category

  @all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.find_by_name(mag_name)
    self.name.find do |the_name|
      the_name == mag_name
    end
  end

  def article_titles
    self.magazine.map do |articles|
      articles == @name
  end

  def contributors
    self.authors.select do |contr|
      contr == name

  end

  def word_count

  end

end
