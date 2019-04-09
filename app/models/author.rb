class Author
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

#instanse methods

  def add_artile(magazine, title, content)
    new_article = Article.new(self, magazine, title, content)
    new_article.magazine = Magazine
  end

  def articles
    Article.all.select do |author|
      name.author == self
    end
  end

  def show_specialties
    Magazine.all.select do |name|
      name.category == self
    end.uniq
  end



#class methods
  def self.all
    @@all
  end

  def self.most_verbose
    Article.all.select do |article|
      article.content.length.max do |author|
        author.author
      end
    end
  end


  def self.most_active
    Article.all.each do |article|
      article.author == self
    end.select do |name|
      name.max_by {|x| x.length}
    end
  end 






end
