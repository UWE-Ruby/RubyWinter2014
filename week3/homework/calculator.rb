class Calculator


def new 
	initialize
end


def sum(array)
    array.inject(:+).to_i
 end


def multiply(*array)
	array.flatten!
    array.inject(:*)
    
end

def pow(num,exp)
	num ** exp
end

def fac(n)
	if n == 0
		return 1
	end
	else
	n.downto(1).inject(:*)
end

end	