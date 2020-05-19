class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|a| a.magazine == self}
  end

  def contributors
    articles.map {|a| a.author}
  end

  def self.find_by_name(name)
    Magazine.all.find{|m| m.name == name}
  end

  def article_titles
    articles.map{|a| a.title}
  end

  def contributing_authors
    #this method is not working quite yet. It is returning a hash and I want it to return
    #an array of authors who have written more than 2 articles for the magazine
    ca = {}
    contributors.map do |c|
       ca[c] ||= 0
       ca[c] += 1
    end
    ca.select{|k,v| v >= 2}
  end

end


# #### Magazine

# DONE - `Magazine.find_by_name(name)`
#        - Given a string of magazine's name, this method returns the first 
#          magazine object that matches

# DONE - `Magazine#article_titles`
#          - Returns an array strings of the titles of all articles written for that magazine

# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine


# DONE - `Magazine#contributors`
        #   - Returns an array of Author instances who have written for this magazine

# DONE - `Magazine#initialize(name, category)`
        #   - A magazine is initialized with a name as a string and a category as a string
        #   - The name and category of the magazine **can be** changed after being initialized.

# DONE - `Magazine#name` - Returns the name of this magazine

# DONE - `Magazine#category` - Returns the category of this magazine

# DONE - `Magazine.all` - Returns an array of all Magazine instances