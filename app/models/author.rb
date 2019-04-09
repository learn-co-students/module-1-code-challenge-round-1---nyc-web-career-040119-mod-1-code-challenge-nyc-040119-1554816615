class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  #instance variables 
  def add_article(author,magazine,title,content)
      new_article = Article.new(self, magazine, title, content)
  end

  def articles 
    Article.all.select do |article|
      # binding.pry
      article.author.name == self.name
    end.uniq
  end

  def magazines 
    articles.select do |article|
      article.author.name == self.name 
      # binding.pry
    end
  end

  def show_specialties
    category = []
    magazines.select do |magazine|
      category << magazine.magazine.category
      # binding.pry
    end
    category.uniq
  end

  
  #class variables
  def self.all
    @@all 
  end

  def self.most_active 
    author = []
    Article.all.select do |articles|
      author << articles.author
    end 
    # binding.pry
    author
  end

end
