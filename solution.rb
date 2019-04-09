# Please copy/paste all three classes into this file to submit your solution!
require 'pry'

class Magazine
  attr_accessor :name, :category

  @all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.find_by_name(mag_name)
    self.name.find do |the_name|
      the_name == mag_name
    end
  end

  def article_titles
    self.magazine.map do |articles|
      articles == @name
  end

  def contributors
    self.authors.select do |contr|
      contr == name

  end

  def word_count

  end

end


require 'pry'
#This is my Join Table
class Article

  attr_reader :author, :magazine
  attr_accessor :content, :title

  @@all = []

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content

    @@all << self
  end

  #class method
  def self.all
    @@all
  end


  #instance methods
  def authors
    @author
  end

  def magazines
    @magazine
  end

  def titles
    @title
  end

  def content
    @content
  end



end


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
