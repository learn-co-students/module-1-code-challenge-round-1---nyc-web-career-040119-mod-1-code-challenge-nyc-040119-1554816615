class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def article_titles
    articles.map { |article| article.title  }
  end

  def contributors
    articles.map { |article| article.author }
  end

  def word_count
    total_words = 0
    articles.each { |article| total_words += article.content.split(" ").length }
    total_words
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end
end
