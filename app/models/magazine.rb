class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  ## instance methods
  ## helper method
  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  ## instance methods(cont)
  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def contributors
    self.articles.map do |article|
      article.author
    end
  end

  def word_count
    word_count = 0
    self.articles.each do |article|
      word_count += article.content.split.length
    end
    word_count
  end

  ## class methods
  def self.all
    @@all
  end

  def self.find_by_name(mag_name)
    self.all.find do |magazine|
      magazine.name == mag_name
    end
  end

end
