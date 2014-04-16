class Restaurant

  attr_accessor :asian

  def initialize(italian, french, asian, american, mexican)
    @italian = italian
    @french = french
    @asian = asian
    @american = american
    @mexican = mexican
  end

  def spicy_food
    "The spicy food: #{@chinese} #{@mexican}"
  end

  def fast_food
    "The fast food: #{@american}"
  end

  def gourmet_food
    "The gourmet food: #{@italian} #{@french}"
  end

end

place = Restaurant.new("italian", "french", "asian", "american", "mexican")

puts place.asian

