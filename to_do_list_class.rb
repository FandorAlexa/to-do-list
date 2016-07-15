require_relative 'to_do_item_class.rb'

class List
  attr_reader :name
  #lists know their item names how to view, add, remove, or complete
  def initialize(name = "New ToDo List")
    @name = name
    @list = Hash.new
  end
  def [](name)
    @list[name]
  end

  def view_list
    @list.each{|k| puts " #{k}"}
  end

  def add_item(item)
    @list[item] = item
  end

  def update_item(item)
    @list[item] = item
  end

  def complete_item(item)
			@list[item].status
  end
end
