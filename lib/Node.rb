require 'pry'

class Node
  attr_reader :data
  attr_accessor :next_node

  # The method below creates an instance of the node object. It passes the data argument to the @data attribute. It also passes a value of nil to the @next_node attribute.
  def initialize(data)
    @data = data
    @next_node = nil
  end

end