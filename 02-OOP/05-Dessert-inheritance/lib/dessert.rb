class Dessert

attr_writer :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
    @@ -18,15 +19,17 @@ def delicious?
  end

class JellyBean < Dessert
attr_reader :flavor
  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end

  def delicious?

    if @flavor == "black licorice"
    false
    else
    true
    end
  end
end