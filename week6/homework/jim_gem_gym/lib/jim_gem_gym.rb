puts "Hi Existence"

class Reality
  attr_accessor :paradigm
  
  def initialize paradigm
    @paradigm = paradigm
  end
  
  def worldview
    "You see the world as #{@paradigm}..."
  end
  
end
