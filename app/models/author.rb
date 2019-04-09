require 'pry '
class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end


  def self.all
    @all
  end

  def most_verbose
    #call method in article

  end

  def  add_author(magazine, title, content)
    Article.new(self, magazine, title, content)
  end


  def articles
    self.title
  end

  def magazines
    self.magazines.uniq
  end

  def show_sepcialties
    self.type.uniq
  end



end
