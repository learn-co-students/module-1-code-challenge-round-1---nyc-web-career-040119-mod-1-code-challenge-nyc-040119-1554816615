class Magazine

  @@all = []

  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    self.class.all << self
  end

  ### INSTANCE METHODS

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    self.articles.map do |article|
      article.author
    end.uniq
  end

  def article_titles
    self.articles.map do |article|
      article.title
    end
  end

  def word_count
    self.articles.sum do |article|
      article.content.split.length
    end
  end



  ### CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

end
