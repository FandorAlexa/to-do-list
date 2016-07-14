class Item
#items will know their name and if they are complete
  def initialize(name, status = false)
    @name = name
    @status = status
  end

  def re_name(new_name)
    @name = new_name
  end

  def status
    @status = true
  end
end
#Hey Alexa, this class is "done"
