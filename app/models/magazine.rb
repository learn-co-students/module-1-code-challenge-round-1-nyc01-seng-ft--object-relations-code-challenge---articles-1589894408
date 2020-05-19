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

  def contributors
    contributors_array = []
    Article.all.each do |article_instance|
      if article_instance.magazine == self 
        contributors_array << article_instance.author 
      end
    end
    contributors_array
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine_instance|
      magazine_instance.name == name 
    end
  end

  def article_titles
    title_array = []
    Article.all.each do |instance|
      if instance.magazine == self
       title_array << instance.title
      end
    end
    title_array
  end

  # def contributor_names #=> set as helper
  #   contributors.map do |instance|
  #     instance.name
  #   end
  # end

  def contributing_authors #=> I know this doesn't work. Ran out of time for tinkering
    empty = []
    contributors.find do |instance|
      empty <<instance.name
    end
    if empty.count > 2
      return empty
    end
  end

end
