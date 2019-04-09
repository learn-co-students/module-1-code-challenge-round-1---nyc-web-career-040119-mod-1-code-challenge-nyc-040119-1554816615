class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazines
    self.articles.map {|article| article.magazine}.uniq
  end

  def show_specialties
    self.magazines.map {|magazine| magazine.category}.uniq
  end

  def self.all
    @@all
  end

  def self.longest_article
    Article.all.max_by do |article|
      article.content.split(" ").length
    end
  end

  def self.most_verbose
    self.longest_article.author
  end

  def self.most_active
    @@all.max_by {|author| author.articles.length}
  end

end
