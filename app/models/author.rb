class Author
  attr_reader :name
        #Author

  # - `Author#initialize(name)`
  #   - An author is initialized with a name, as a string.
  #   - A name **cannot** be changed after it is initialized.
  # - `Author#name`
  #   - Returns the name of the author

  def initialize(name)
    @name = name
  
  end

      def articles

      # - `Author#articles`
      #   - Returns an array of Article instances the author has written
      Article.all.select do |art|
        art.author==self
      end
    end

      def magazines
      # - `Author#magazines`
      #   - Returns a **unique** array of Magazine instances for which the author has contributed to
      mgz=[]
      Article.all.each do |art|
        if art.author==self
          mgz << art.magazine
        end
      end
    end

    def add_article(magazine, title)
    #   - `Author#add_article(magazine, title)`
    #  - Given a magazine (as Magazine instance) and a title (as a string),
    # creates a new Article instance and associates it with that author and that magazine.
      Article.new(title, self, magazine)
    end

    def topic_areas
    # - `Author#topic_areas`
    #   - Returns a **unique** array of strings with the categories of the 
    #magazines the author has contributed to
    Article.all
end
