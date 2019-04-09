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
    # binding.pry
    @@all.select {|magazine| magazine.name == name}
  end

  def articles #helper method all the articles tied to this magazine
    Article.all.select{|article| article.magazine == self}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def contributors
    self.articles.map {|article| article.author}.uniq
  end

  def word_count
    articles.map{|article| article.content}.join(" ").split(" ").length
  end


end
