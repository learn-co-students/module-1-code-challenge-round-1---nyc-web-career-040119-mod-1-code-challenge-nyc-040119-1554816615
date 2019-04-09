class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|article| article.author== self }
  end

  def add_article(magazine,title,content)
    Article.new(self,magazine,title,content)
  end

  def magazines
    articles.map{|article| article.magazine}.uniq
  end

  def show_specialties
    # binding.pry
    self.magazines.map{|magazine| magazine.category}
  end

  def self.most_active #incomplete
    hash = {}
    @@all.each do |author|
    hash[author] = author.articles.length
      end
      binding.pry
      hash.values.max
    end

  def self.most_verbose
    Article.all.max_by {|article| article.content.length }.author
  end
end
