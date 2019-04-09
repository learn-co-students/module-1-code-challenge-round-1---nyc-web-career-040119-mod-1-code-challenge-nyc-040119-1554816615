class Article

  @@all = []

  attr_reader :author, :magazine, :title, :content

  def initialize(author, magazine, title, content)
    @author = author
    @magazine = magazine
    @title = title
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.longest_article
    self.all.max_by do |article|
      article.content.split.length
    end
  end

  def self.authors_only
    self.all.map do |article|
      article.author
    end
  end

end
