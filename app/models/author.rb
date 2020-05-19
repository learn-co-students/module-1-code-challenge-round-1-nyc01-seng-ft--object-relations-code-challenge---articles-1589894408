class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  
  end
  binding.pry

end


#### Author

# - `Author#initialize(name)`
#   - DONE - An author is initialized with a name, as a string.
#   - DONE- A name **cannot** be changed after it is initialized.
# - `DONE Author#name`
#   - Returns the name of the author