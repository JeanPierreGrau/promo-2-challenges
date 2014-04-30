require_relative 'restaurant'

class Employee

attr_reader :name, :password

    def initialize(name, password)
        @name = name
        @password = password
    end

    def to_s
        @name.capitalize
    end

end