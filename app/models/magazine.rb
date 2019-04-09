class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  # INSTANCE METHODS

  # HELPER
  def article_magazine
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    self.article_magazine.map do |article|
      article.title
    end
  end

  def contributors
    self.article_magazine.map do |article|
      article.author
    end
  end

  def word_count
    self.article_magazine.map do |article|
      article.content.length
    end.inject(:+)
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_name(magazine_name_str)
    self.all.find do |magazine|
      magazine.name == magazine_name_str
    end
  end

end
