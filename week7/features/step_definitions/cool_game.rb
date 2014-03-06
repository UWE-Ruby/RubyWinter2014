class CoolGame
  def initialize name
    @player = name
  end

  def move
    if @player == "Renee"
      @won = true
    else
      @won = false
    end
  end

  def won?
    @won
  end

  def ouput
    "You #{won? ? 'Won' : 'Lost'}!"
  end

end