class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  ### INSTANCE METHODS

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
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
    self.magazines.map do |magazine|
      magazine.category
    end.uniq
  end



  ### CLASS METHODS

  def self.all
    @@all
  end

  def self.most_verbose
    Article.longest_article.author
  end

  def self.most_active
    Article.authors_only.max_by do |author|
      Article.authors_only.count(author)
    end
  end

end
