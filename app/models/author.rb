#One to Many Articles
#code runs top down, variables and containers.classes are loaded first for accessability
class Author
  attr_reader :name
  @@all=[]
  #Defined array storing instances of Author('name'), collectively Authors

  #`Author#name`
  #+ Returns the name of the author as a string
   # AIM: Filling in new author name and making sure its returned as a string
   ### initialize a method that takes name and returns 'name'
   def initialize(name)
     @name = name
      name = 'name'
     @@all << self
   end

  #+ `Author.all`
    #+ Returns an array of all Author instances
    # AIM: Make a list of all the Authors
    def self.all
      @@all   ### Declare class.all to return all instances of Author'name'
    end

  #+ `Author.most_verbose`
    #+ Returns the Author instance who has the longest article by word count
    # AIM: Find the Author showing off his longest article with word count, need to go through all articles and find the winner
    def articles
          ### Select all appricable articles to authors and return all instances that are true, or related to an author
      Article.author.select { |articles| articles.author==self.name }
    end

    def self.most_verbose
      ### Go through all articles split into different words,count and return article with highest count
      articles.author.map {|article| article.split(' ',', ',' .').count}.max
    end
end
