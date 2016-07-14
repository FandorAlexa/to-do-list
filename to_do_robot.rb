require_relative 'to_do_item_class.rb'
require_relative 'to_do_list_class.rb'
puts "Welcome to your To-Do list!"

class MakeToDo
  def initialize
    puts "Ready to create your to-do list?(Yes or No?)"
    answer = gets.chomp.downcase

    case answer
    when 'yes'
      puts "What would you like to name your ToDo list?"
      name = gets.chomp.capitalize
      @list = List.new(name)
      puts "Your ToDo list #{list.name} was created!"

    when 'no'
      puts "Okay, see you later!"
    else
      puts "I'm sorry, I didn't understand you, please enter 'Yes' or 'No'"
    end
  end
  def view
    list.view_list
  end

  def list
    @list ||= List.new #if @list is not nil then create a new list and assign it to the list var
  end

  def add
    puts "Type the name of one of the items you'd like to do today."
    new_item = gets.chomp

    if list[new_item.to_sym].nil?
      item = Item.new(new_item)
      list.add_item(item)
      puts "#{item.name} added!"
    else
      puts "That item is already on your list!"
    end
  end

  def remove
    puts "Which item would you like to remove?"
    item = gets.chomp
    if list[item].nil?
      puts "Item not found."
    else
      list.delete(item)
      puts "#{item} has been removed."
    end
  end

  def update
    puts "What item do you want to update?"
    item = gets.chomp
    if list[item].nil?
      puts "Item not found!"
    else
      #I'm not sure this part works the way I want yet
      puts "What would you like to change #{item} to?"
      append_item = gets.chomp
      list[item] = append_item
      list.update_item(append_item)
      puts "#{item} has been updated it is now #{append_item}."
    end
  end

  def complete
    #I'm not sure this part works the way I want yet
    puts "What item have you completed?"
    completed_item = gets.chomp
    list.each do |complete|
      if complete != completed_item
        return
      else
        completed_item = completed_item + " Completed!"
        list[completed_item] = completed_item
        list.complete_item(completed_item)
      end
    end
  end

  def edit
    puts "Would you like to View your list or Add, Remove, Update, or Complete an item?"

    loop do
      response = gets.chomp.downcase

      case response
      when 'view'
        view
      when 'add'
        add
      when 'remove'
        remove
      when 'update'
        update
      when'complete'
        complete
      else
        puts "I'm sorry, valid entries are: View, Add, Remove, Update, or Complete."
      end
    end
    puts "What would you like to do now?"
  end
end
my_list = MakeToDo.new.edit
