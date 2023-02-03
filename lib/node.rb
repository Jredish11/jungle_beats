class Node

  attr_accessor :sound, :next_node
  def initialize(sound, next_node = nil)
    @sound = sound
  end

  def data
    @sound
  end
end

