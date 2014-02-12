class Calculator
      def sum(array)
         array.inject(0){|sum, x| sum +x}
      end

      def multiply(*numbers)
         puts numbers.inspect
         numbers.flatten.inject(:*)
      end

      def pow(base, p)
          pow_fac(base, p)
      end

      def fac(n)
          pow_fac(n)
      end
private
      def pow_fac(base=nil, p)
          (1..p).to_a.inject(1){|f,v| f *= base || v}
      end	
end
