class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def articles
    Article.all.select { |article| article.author == self }
  end

  ## INSTANCE METHODS ##
  def magazines
    articles.map { |article| article.magazine }.uniq
  end

  def show_specialties
    magazines.map { |magazine| magazine.category }.uniq
  end

  # Article - def initialize(author, magazine, title, content)
  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  ## CLASS METHODS ##
  def self.all
    @@all
  end

  def self.most_verbose
    Article.all.max_by { |article| article.content.length }.author
  end

  def self.article_count
    tots = {}
    Article.all.each do |article|
      if !tots[article.author]
        tots[article.author] = article.author.articles.length
      end
    end
    tots
  end

  def self.most_active
    article_count.max_by { |author| author[1] }
  end

end
