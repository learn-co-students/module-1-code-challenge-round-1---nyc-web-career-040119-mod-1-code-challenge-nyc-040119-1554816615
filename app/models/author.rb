#One to Many Articles
class Author
  #code runs top down, variables and containers.classes are loaded first for accessability
  attr_reader :name

  @@all=[]
  #Defined array storing instances of Author('name'), collectively Authors


  `Author#name`
   + Returns the name of the author as a string
   # AIM: Filling in new author name and making sure its returned as a string
   # CODE: initialize a method that takes name and returns 'name'
   def initialize(name)
     @name = name
      name = 'name'

     @all << self
   end


  + `Author.all`
    + Returns an array of all Author instances
    # AIM: Make a list of all the Authors
    # CODE: Declare class.all to return all instances of Author'name'
    def self.all
      @@all
    end



  + `Author.most_verbose`
    + Returns the Author instance who has the longest article by word count
    # AIM: Find the Author showing off his longest article with word count, need to go through all articles and find the winner

    # CODE: Select all appricable articles to authors and return all instances that are true, or related to an author
        def articles
          Article.author.select { |articles| articles.author==self.name }
        end


        # CODE: Go through all articles split into different words,count and return article with highest count

    def self.most_verbose
      articles.author.name.map {|article| article.split(' ',', ',' .').count}.max
    end


end
