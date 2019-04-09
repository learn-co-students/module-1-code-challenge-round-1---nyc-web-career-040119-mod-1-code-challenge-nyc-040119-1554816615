class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def contributors
    #not unique because the README didn't require it
    self.articles.map {|article| article.author}
  end

  def word_count
    word_counts = self.articles.map {|article| article.content.split(" ").length}
    word_counts.inject(0,:+)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|magazine| magazine.name == name}
  end

end
