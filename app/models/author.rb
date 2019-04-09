#Author to many Articles
class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def articles
    Article.all.select {|author| author.article.name }
  end

  def magazines
    self.articles.select {|magazine| magazine.article == self}
  end
  
  def
    @@all
  end
end
