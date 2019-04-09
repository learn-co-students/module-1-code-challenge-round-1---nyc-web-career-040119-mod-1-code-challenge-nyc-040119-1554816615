class Author
  # attr_accessor :name
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Article.all.map do |article|
      # binding.pry
      article.content
    end
  end

  def self.most_verbose
    self.articles.select do |article|
      article.length
    end

  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |articles|
      articles.author == self
    end
  end

  def magazines
    self.articles.map do |articles|
      articles.magazine
    end.uniq
  end

  def show_specialties
    self.articles.map do |articles|
      articles.magazine.category
    end.uniq
  end

  # def self.most_active
  #   Article.all.map do |articles|
  #     binding.pry
  #   end
  # end

  def self.all
    @@all
  end

end
