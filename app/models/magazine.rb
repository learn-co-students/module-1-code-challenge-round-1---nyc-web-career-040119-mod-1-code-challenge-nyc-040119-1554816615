class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end


  #Returns an array of the titles of all articles written for that magazine
  def article_titles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  # Returns an array of Author instances who have written for this magazine
  def contributors
    article_titles.map do |article|
      article.author
    end.uniq
  end

  # Returns a number that is the total number of words for all of the articles in this magazine
  def word_count
    # article_titles.map do |article|
    #   article.content.split.size
    # end.sum
    #or
    article_titles.map do |article|
      article.content.split.size
    end

    # I'm not sure whether you want an individual count, or a sum or all the counts
  end

  def self.all
    @@all
  end

  # Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end
end
