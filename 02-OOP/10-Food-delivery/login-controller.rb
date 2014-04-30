class Login_Controller

    def initialize(restaurant)
        @restaurant = restaurant
    end

    def login(name, password)
        user = @restaurant.staff.find do |staff|
        staff.name == name
        end
            if user == nil
                puts "wrong user"
            else
                check_password(user, password)
            end
    end

    def check_password(user, password)
        if user.password == password
            open_ui(user)
        else
            puts "wrong password"
        end
    end

    def open_ui(user)
        if user.is_a? Manager
            ui = UI_Manager.new(@restaurant, user)
            ui.display
        elsif user.is_a? Employee
            ui = UI_Employee.new(@restaurant, user)
            ui.display
        else
            puts "login error"
        end
    end

end

