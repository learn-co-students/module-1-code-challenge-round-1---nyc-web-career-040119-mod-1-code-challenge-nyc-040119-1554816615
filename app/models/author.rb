class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  ## instance methods
  def add_article(magazine,title,content)
    Article.new(self,magazine,title,content)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  def show_specialties
    self.articles.map do |article|
      article.magazine.category
    end.uniq
  end

  ## class methods
  def self.all
    @@all
  end

  def self.most_verbose
    Article.all.max_by do |article|
      article.content.length
    end.author
  end

  def self.most_active
    self.all.max_by do |author|
      author.articles.length
    end
  end

end
