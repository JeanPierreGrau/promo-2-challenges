class OrangeTree

attr_reader :age, :height, :fruit

  def initialize
    @age = 0
    @height = 0
    @fruit = 0
  end


  def one_year_passes!
    @age += 1
  end


  def dead?
    if @age <= 50
      false
    elsif @age <= 100
      true
    else
      true
    end
  end


  def height
    if @age < 10
       @height = @age
    else
       @height = 10
    end
  end


  def fruit
    if @age <= 5
      @fruit = 0
    elsif @age < 10
      @fruit = 100
    elsif @age < 16
      @fruit = 200
    else
      @fruit = 0
     end
  end


  def pick_a_fruit!
    @fruit -= 1
  end

end

