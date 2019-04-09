class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  # Returns an array of Article instances the author has written
  def articles
  end

  # Returns a unique array of Magazine instances for which the author has contributed to
  def magazines
  end

  # Returns a unique array of categories of the magazines for which the author has contributed to
  def show_specialties

  end

  def self.all
    @@all
  end

  # need to provide implementation
  def self.most_verbose
  end

  # Returns the Author instance who has written the greatest number of articles
  def self.most_active

  end

end
