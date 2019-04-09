#Magazine to many Articles
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
    self.all.find {|name| name }
  end

  def articles
    Article.all.select {|magazine| magazine.article == self }
  end

  def authors
    self.articles.select {|author| author.article == self }
  end
end
