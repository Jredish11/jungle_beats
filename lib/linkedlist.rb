class LinkedList

  attr_accessor :head, :data, :next_node
  def initialize
    @head = nil
  end



  def append(data) #adding node to end of list
    if @head.nil? ##if nothing is here i need to start a node. if head is nil create new node
    head_node = Node.new(data)
    @head = head_node
    else
      new_node = Node.new(data)
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
 end

  def count
    count = 1
    if @head.nil?
      0
    else 
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end

  def to_string
    results_string = ""
    if @head.nil?
      results_string
    else 
      results_string = @head.data
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
        results_string = results_string + " " + current_node.data
      end
      results_string
    end
  end
end


