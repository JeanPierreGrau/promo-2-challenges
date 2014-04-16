class Restaurants

  attr_writer :asian

  def initialize(italian, french, asian, american, mexican)
    @italian = italian
    @french = french
    @asian = asian
    @american = american
    @mexican = mexican
  end

  def spicy_food
    "The spicy food: #{@asian}, #{@mexican}"
  end

  def fast_food
    "The fast food: #{@american}"
  end

  def gourmet_food
    "The gourmet food: #{@italian}, #{@french}"
  end



end

place = Restaurants.new("italian", "french", "asian", "american", "mexican")

puts place.fast_food
puts place.spicy_food
puts place.gourmet_food
