module SimonSays
  def echo(statement)
    statement
  end

  def shout(statement)
    statement.upcase
  end

  def repeat(statement, amount = 2)
    ([statement] * amount).join(" ")
  end

  def start_of_word(statement, number)
    statement[0, number]
  end

  def first_word(statement)
    a = statement.split
    a[0]
  end
end

