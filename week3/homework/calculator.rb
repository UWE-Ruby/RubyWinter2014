
class Calculator
    
    # accepts an array param and returns sum of each element in the array
    def sum(array)
        array.inject(0){|sum, x| sum +x}
    end

    # accepts either params or array and returns product of elements
    def multiply(*nums)
        nums.flatten.inject(:*)
    end

    # accepts two number params and returns base to the power of exponent
    def pow(base, exponent)
        base ** exponent
    end

    # accepts number param and if zero returns 1 otherwise returns product of 1 to n
    def fac(n)
        return 1 if n.zero?
        1.upto(n).inject(:*)
    end

end
