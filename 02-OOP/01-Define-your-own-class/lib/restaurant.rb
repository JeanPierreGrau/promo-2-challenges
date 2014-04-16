class Restaurants

  def initialize(italian, french, chinese, american, mexican)
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

attr_accessor :asian

place = Restaurants.new("chinese", "thai", "korean")
puts a.asian
