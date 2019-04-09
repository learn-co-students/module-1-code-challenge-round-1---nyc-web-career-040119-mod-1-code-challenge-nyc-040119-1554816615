require "pry"
class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  #INSTANCE METHODS
  def article_titles
    Article.all.map do |art|
      if art.magazine == self
        art.title
      end
    end
  end

  def contributors
    Article.all.map do |art|
      if art.magazine == self
        art.author
      end
    end
  end

  def word_count
    count = []
    Article.all.map do |art|
      count += art.content.split(" ").length
    end
    sum = 0
    count.each do |num| #I feel as though this ought to be working, but for some reason it's not recognizing count as an array
      sum += num
    end
    sum
  end
  #CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each do |mag|
      if mag.name == name
        mag
      end
    end
  end

end
