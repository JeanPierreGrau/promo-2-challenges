class UI

  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def list
    # TODO: call the appropriate controller method with the proper argument(s)
    # TODO: format and display the retrieved data in a numbered list
    @controller.list_recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe} (miam)"
    end
  end

  def add
    p "What recipe do you want to delete?"
    controller.add(user_input)
  end


  def del
    # TODO: ask the user a recipe index
    # TODO: call the appropriate controller method with the proper argument(s)
    puts "Which recipe do you want to delete? (enter <id>)"
    index = gets.chomp.to_i
    deleted_recipes = @controller.delete_recipe(index - 1)
    puts "The recipe #{deleted_recipes} has been deleted"
  end

  def exit
    # TODO: exit the program
    # Hint: Take a look at the display method !
    @running = false
  end

  def user_input
    # TODO: Get the user input and return it
    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
    user_answer = gets.chomp
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send

  def dispatch(task)
    self.send(task.to_sym)
  end
end








