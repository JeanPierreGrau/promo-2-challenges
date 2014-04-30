class Playboy

  attr_accessor :name
  attr_writer :age
  attr_reader :country

  def initialize(name, age, country)
    @name = name
    @age = age
    @country = country

  end
end

