require "#{File.dirname(__FILE__)}//library"

class PirateTranslator
  include Library

  def initialize
    @dictionary = getDictionary(:pirate)
  end

  def say key
    @result = @dictionary[key]
  end

  def translate
    @result
  end
  
end