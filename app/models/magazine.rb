class Magazine
  attr_accessor :name, :category, :article, :author
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
    Author.all.select {|authors| authors.magazine == self}
  end
end
