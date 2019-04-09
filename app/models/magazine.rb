class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self 
  end

  #class methods
  def self.all 
    @@all
  end 

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name 
    end
  end 

  def article_titles
    Article.all.map do |magazine|
      magazine.title
      # binding.pry
    end 
  end

  def contributors 
    Article.all.select do |magazine|
      magazine.author
      # binding.pry
    end
  end



end
