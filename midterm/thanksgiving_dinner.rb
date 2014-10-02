module Dinner;end
class ThanksgivingDinner
  include Dinner
  attr_accessor :menu, :guests

  def initialize(vegan)
    @vegan = vegan
  end
  
  def guests
  end

  def seating_chart_size
    45
  end

  def menu
    { :diet     => :vegan,
      :proteins => ["Tofurkey", "Hummus"],
      :veggies  => [:ginger_carrots , :potatoes, :yams],
      :desserts => {:pies=>[:pumkin_pie], :other=>["Chocolate Moose"], :molds=>[:cranberry, :mango, :cherry]}
    }
   
  end

  def whats_for_dinner
    "Tonight we have proteins Tofurkey and Hummus, and veggies Ginger Carrots, Potatoes, and Yams."
  end

  def whats_for_dessert
    "Tonight we have 5 delicious desserts: Pumkin Pie, Chocolate Moose, and 3 molds: Cranberry and Mango and Cherry."
  end

end
