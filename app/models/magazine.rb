class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category


    @all << self
  end

#class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect do |magazine|  #return the first true in this block
      magazine.name == name
    end
  end


  #instant methods

  def article_titles
    Article.all.select do |artile_title|
      artile_title.magazine == self
    end
  end

  def contributors
    Author.all.select do |name|
      name.author == self
    end
  end

  def word_count
    Article.all.select do |words|
      words.content == self
    end.length.to_i

end
