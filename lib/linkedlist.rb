class LinkedList

  attr_accessor :head, :data, :sound
  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) #creat node object
  end

   
    
    
  


  def count
    @count = 1
  end

  def to_string
    @head.data
  end
end