require_relative 'to_do_item_class.rb'
class List
  #lists know their item names how to view, add, remove, or complete
  def initialize(name = "New ToDo List")
    @name = name
    @list = Hash.new{}
  end

  def view()
    #Put code here
  end

  def add(item)
    @list[item.name] = item
  end

  def remove()
    #Put code here
  end

  def complete()
    #Put code here
  end
end
