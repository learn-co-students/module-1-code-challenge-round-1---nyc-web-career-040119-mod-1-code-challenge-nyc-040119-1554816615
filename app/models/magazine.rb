class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles_in_magazine
    Article.all.select do |articles|
      articles.magazine == self
    end
  end

  def article_titles
    articles_in_magazine.map do |article|
      article.title
    end
  end

  def contributors
    articles_in_magazine.map do |article|
      article.author
    end.uniq
  end

  def word_count
    articles_in_magazine.map do |article|
      article.content
      # binding.pry
    end.join(" ").split(/[\. ]/).reject(&:empty?).count
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def self.all
    @@all
  end

end
