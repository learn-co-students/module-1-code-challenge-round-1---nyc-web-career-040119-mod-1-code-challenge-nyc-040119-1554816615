class Magazine

  @@all = []

  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

#INSTANCE METHODS

  def article_titles
    Article.all.select do |articles|
      articles.author == self
    end.map do |articles|
      articles.title
    end
  end






#CLASS METHODS

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end


end
