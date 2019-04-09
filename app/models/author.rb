require "pry"
class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #INSTANCE METHODS
  def add_article(magazine, title, content)
    Article.new(title, content, self, magazine)
  end

  def articles
    Article.all.map do |art|
      if art.author == self
        art
      end
    end
  end

  def magazines
    Article.all.map do |art|
      if art.author == self
        art.magazine
      end
    end.uniq.compact
  end

  def show_specialties
    Article.all.map do |art|
      if art.author == self
        art.magazine.category
      end
    end.uniq.compact
  end

  #CLASS METHODS
  def self.all
    @@all
  end

  def self.most_verbose #I ran out of time to complete this method
    #returns author with longest article by word count
    longest_count = 0
    Article.all.select do |art|
      longest_count = art.content.split(" ").length
      if longest_count > count
        count = longest_count
      else
        count
      end
      #in the console, art.content.split(" ").length returns a number.
      count
    end
  end

  def.most_active #I ran out of time to complete this method
    count = 0 #set count of articles written by an author
  #itterate through articles, find those by a specific author
    Article.all.map do |art|
      if art.author == self
        count += 1
      end
    end
    count
  end

end
