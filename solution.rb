# Please copy/paste all three classes into this file to submit your solution!
class Article

  attr_accessor :title, :content
  attr_reader :author, :magazine

  @@all =[]

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end

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

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def article_titles
    articles.map { |article| article.title  }
  end

  def contributors
    articles.map { |article| article.author }
  end

  def word_count
    total_words = 0
    articles.each { |article| total_words += article.content.split(" ").length }
    total_words
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end
end
