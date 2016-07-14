require_relative 'todo_item_class.rb'
require_relative 'todo_list_class.rb'
puts "Welcome to your To-Do list!"

class MakeToDo

  def greeting
    puts "Ready to create your to-do list?(Yes or No?)"
    answer = gets.chomp.downcase

    case answer
      when 'yes'
        puts "What would you like to name your ToDo list?"
        name = gets.chomp.capitalize
        @list = List.new(name)
        puts "Your ToDo list #{@list.name} was created!"

      when 'no'
        puts "Okay, see you later!"
      else
        puts "I'm sorry, I didn't understand you, please enter 'Yes' or 'No'"
    end
  end

  def edit
    puts "Would you like to View your list or Add, Remove, or Complete an item?"
    response = gets.chomp.downcase

    case response
    when 'view'
      #Put code here
    when 'add'
      puts "What do you need to do today?"
      new_item = gets.chomp

      item = Item.new(new_item)
      @list.add(item)
      puts "#{item.new_item} added!"
    when 'remove'
      #Put code here
    when'complete'
      #Put code here
    else
      puts "I'm sorry, valid entries are: View, Add, Remove or Complete."
    end
  end
end
