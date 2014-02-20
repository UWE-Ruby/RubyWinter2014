module Animal;end
  class Turkey
      include Animal

      def initialize(weight)
        @weight = weight
      end

      def weight
        @weight
      end

      def gobble_speak(message)
        if message == "Hello I Am a Turkey. Please Don't Eat Me."
          "Gobble Gobble Gobble gobble Gobble. Gobble Gobb'le Gobble Gobble."
        end
      end
  end
