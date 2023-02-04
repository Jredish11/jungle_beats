class LinkedList

  attr_accessor :head, :data
  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) #creat node object
  end

  def count
    count = 0    #count starts at 0
    current_node = @head   #current_node = ^ Node.new(data)
    until current_node.nil?  #loop until current_node = nil
      count += 1   #count each current node
      current_node = current_node.next_node  #current_node equals nil when nextnode is called on it. ends loop and count.
    end
    count  #prints the count of nodes 
  end

  def to_string
    @head.data
  end
end