require 'pry'

class Article

  attr_reader :author, :magazine
  attr_accessor :title, :content

  @@all = []

  def initialize(title, content, author, magazine)
    @title = title
    @content = content
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end



end
