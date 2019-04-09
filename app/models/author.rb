require 'pry'

class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_search
    Article.all.select do |work|
      work.author == self
    end
  end

  def self.most_verbose
    Article.all.count_by{|work| work.content}.author
  #   Article.all.select do |story|
  #     story.author = self
  # end.map do |story|
  #   story.count
  end

  def articles
    Article.all.select do |work|
      work.author == self
    end
  # .map do |work|
  #   work.
  end

  def magazines
    author_search.map{|work| work.magazine}.uniq
  end

  def show_specialties
    author_search.map{|work| work.magazine}.select{|work|
      work.category}.uniq
  end

  def self.most_active
    Article.all.max_by{|work| work.author}
  end

end
