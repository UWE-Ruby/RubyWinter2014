# encoding: utf-8
#
module SimonSays
  def echo(input)
    input
  end

  def shout(input)
    input.upcase
  end

  def repeat(*inputs)
    num_args = inputs.count
    if num_args == 2
      n = inputs[1]
    else
      n = 2
    end
    ((inputs.first + ' ') * n).chop
  end

  def start_of_word(input, n)
    input.slice(0, n)
  end

  def first_word(input)
    input.split[0]
  end
end
