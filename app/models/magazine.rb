class Magazine
  @@all =[]
  attr_accessor :name, :category
# Magazine

# - `Magazine#initialize(name, category)`
#   - A magazine is initialized with a name as a string and a category as a string
#   - The name and category of the magazine **can be** changed after being initialized.
# - `Magazine#name`
#   - Returns the name of this magazine
# - `Magazine#category`
#   - Returns the category of this magazine


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    # - `Magazine.all`
    #   - Returns an array of all Magazine instances
    @@all
  end
  def contributors
  # - `Magazine#contributors`
  # - Returns an array of Author instances who have written for this magazine
  athr=[]
  Article.all.each do |art|
    if art.magazine==self
      athr << art.author
    end
  end
  athr
end
    def self.find_by_name(name)
    # - `Magazine.find_by_name(name)`
    #   - Given a string of magazine's name, this method returns the first magazine object that matches
      
    
   all.find do |mgz| 
        mgz.name==name
     end

      
    end

    def article_titles
    # - `Magazine#article_titles`
    #   - Returns an array strings of the titles of all articles written for that magazine
    titlez=[]
    Article.all.each do |art|
      if art.magazine==self
       titlez << art.title
      end
    end
  end

    def contributing_authors
    # - `Magazine#contributing_authors`
    #   - Returns an array of authors who have written more than 2 articles for the magazine
    
    authors=[]
    contributors.each do |cont|
      counter=0
      i=0
      while i<contributors.length

       if  cont==contributors[i]
        counter +=1
        i +=1
      end
    end
      if counter>2
        authors << cont.name
      end
    end
    authors.uniq
  end
end
