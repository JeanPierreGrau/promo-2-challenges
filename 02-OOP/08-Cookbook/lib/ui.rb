require_relative 'cookbook'
require_relative 'controller'

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
    puts "Your recipes : "
    @controller.list.each_with_index do |recipe, index|
      puts "#{index + 1} : #{recipe_name} (#{recipe.prep_time} min)"
  end

  def add
    puts "Enter the name of your recipe"
    name = gets.chomp

    puts "Enter the rating of your recipe"
    name = gets.chomp.to_i

    puts "Enter the cook time of your recipe"
    name = gets.chomp.to_i

    puts "Enter the prep_time of your recipe"
    name = gets.chomp.to_i

    @controller.add(user_input)
  end

  def del
    p "What recipe do you want to add?"
    @controller.delete(user_input)
  end

  def exit
    @running = false
  end

  def user_input
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

  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  def dispatch(task)
    self.send(task.to_sym)
  end
end








