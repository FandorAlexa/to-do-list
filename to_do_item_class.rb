class Item
#items will know their name and if they are complete
attr_reader :name, :status
  def initialize(name)
    @name = name
    @status = false
  end

  def status
    @status = true
  end
end
#Hey Alexa, this class is "done"
