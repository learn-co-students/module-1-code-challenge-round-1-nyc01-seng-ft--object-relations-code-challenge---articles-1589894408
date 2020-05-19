class Magazine
  
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    writers = []
    Article.all.select do |article|
      if article.magazine == self
      writers.push(article.author)
      end
    end
    writers.uniq
  end

  def self.find_by_name(name)
    Magazine.all.select do |mag|
      mag.name == name
    end
  end

  def article_titles
    articles = []
    Article.all.select do |article|
      if article.magazine == self
      articles.push(article.title)
      end
    end
    articles
  end

  def all_authors
    all = []
    Article.all.select do |article|
      if article.magazine == self
      all.push(article.author.name)
      end
    end
  end

  def contributing_authors
    con_arr = []
    contrib = Hash.new(0)
    all_authors.map do |article|
      contrib[article.author.name] +=1
    end
    contrib.each do |name, article|
      if article > 2
        con_arr.push(name)
      end
    end
      con_arr
  end


end
