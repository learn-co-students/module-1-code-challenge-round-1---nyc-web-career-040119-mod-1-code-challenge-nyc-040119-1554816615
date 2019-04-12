class Magazine
  attr_accessor :name, :category
  # + `Magazine#name`
  #   + Returns the name of this magazine
  # + `Magazine#category`
  #   + Returns the category of this magazine
  # + `Magazine.all`
  #   + Returns an array of all Magazine instances
  @@all = []
  def initialize(name, category)
    @name = name #instance of the name string
    @category = category #instance of the category string

    @@all << self
  end

  def self.all
    @@all
  end

  # + `Magazine.find_by_name(name)`
  #   + Given a string of magazine's name, this method returns the first magazine object that matches
  ### When input is 'name' iterate through all instances of the class and return first match
  def self.find_by_name('input_name')
    self.all.find {|name| 'name' == 'input_name'}
  end
end
