class Author

  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self

  end


#INSTANCE METHODS

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  # def art
  #   Article.all.select do |article|
  #     article.author == self
  #   end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    Article.all.select do |articles|
      articles.author == self
    end.map do |articles|
      articles.magazine.name
    end
  end

  def show_specialties
    Article.all.select do |articles|
      articles.author == self
    end.map do |articles|
      articles.magazine.category
    end
  end

#CLASS METHODS

def self.all
  @@all
end

# def self.most_active
#   Author.all.find do |author|
#     author
#   end


# def self.most_verbose
#   Article.all.max_by do |article|
#     article.length
#   end
# end


end
