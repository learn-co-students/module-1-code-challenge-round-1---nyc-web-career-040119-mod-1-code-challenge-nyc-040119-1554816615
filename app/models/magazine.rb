require 'pry'

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|text| text.name == name}
  end

  def article_titles
    Articles.all.select do |work|
      work.magazine == self
    end.map do |work|
      work.title
    end
  end

  def contributors
    Articles.all.select do |work|
      work.magazine == self
    end.map do |work|
      work.authors
    end
  end

  def word_count
    Article.all.select do |work|
      work.magazine == self
    end.count{|work| work.content}
  end

end
