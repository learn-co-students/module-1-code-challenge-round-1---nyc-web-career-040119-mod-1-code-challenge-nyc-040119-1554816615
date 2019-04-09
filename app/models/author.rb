require 'pry'

class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS
  def add_article(magazine_object, title, content)
    Article.new(self, magazine_object, title, content)
  end

  # HELPER
  def article_author
    Article.all.select do |article|
      article.author == self
    end
  end

  def articles
    self.article_author
  end

  def magazines
    article_author.map do |article|
      article.magazine
    end.uniq
  end

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.most_verbose
    Article.all.max_by do |article|
      article.content.length
    end.author
  end

  def self.most_active
    hash = Hash.new(0)
    Article.all.map do |article|
      hash[article.author] += 1
    end
    hash.sort_by do |author, count|
      count
    end.reverse.to_h.first[0]
  end

end
