class HeadGear
end

# This is a really cool Hat class
#
# Author: Chris Ashfield
# License: MIT
#
# More info about class
class Hat < HeadGear
	attr_accessor :color, :size

  # This is the constructor
  # * size : the size of the Hat
  # * color : The color of the Hat
  def initialize color, size
  	@color = color
  	@size = size
  end

end