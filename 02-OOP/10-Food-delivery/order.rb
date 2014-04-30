# MEALS = {
#   reine: 10,
#   marguerite: 9,
#   chorizo: 12,
#   calzone: 11,
#   sicilienne: 8
# }

class Order

attr_accessor :delivery_guy, :statut

    def initialize(customer)
        @statut = "pending"
        @customer = customer
        @delivery_guy = nil
        add_meals
    end

    def to_s
        "Client: #{@customer}; Delivery: #{delivery_guy}; Statut: #{@statut}; Order: #{@meals}"
    end

    def add_meals

        @meals = {}
        answer = nil

        until answer == ""
            puts "Menu #{MEALS}"
            puts "Please enter your meal or press 'Enter'"
            answer = gets.chomp
            unless answer == ""
                raise "we don't have this meal" if (MEALS.has_key? answer.to_sym) == false
                @meals[answer.to_sym] = MEALS[answer.to_sym]
            end

        end
    end

end

#neworder = Order.new("jean-pierre")

# new_order = Orders.new("Jean-Pierre Grau")
