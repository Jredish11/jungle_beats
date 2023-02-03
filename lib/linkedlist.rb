class LinkedList

  attr_accessor :head, :data, :sound
  def initialize
    @head = nil
   

  end

  def append(data)
    @head = Node.new(data) #creat node object
   
    
    
    # if @head.nil? 
    #   @head == new_node #set node head
    # else
    #   current = @home #et current node
    # end
  end

  def count
  end
end