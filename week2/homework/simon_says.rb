module SimonSays

  def echo says
  	says
  end
  
  def shout says
  	says.upcase
  end
  
  def repeat says, repeat_num=2
  	# One way to do it
  	# str = "#{says} " * repeat_num
  	# str.chop
  	# Less ugly way to do it
	( "#{says} " * repeat_num).strip
  end
  
  def first_word says
  	says.split[0]
  end
  
  def start_of_word says, num=2
  	says[0...num]
  end

end