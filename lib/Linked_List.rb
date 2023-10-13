require 'pry'
require './lib/node'

class LinkedList
  attr_reader :head
  
  # Create a LinkedList instance with head equal to nil.
  def initialize
    @head = nil
  end

  def append(data)
    # Create a Node object and set it as the head in the linked list. 
    # ?? is this written correctly? Should @head be more dynamic? How do I add it to the list without overwriting the head every time?
    @head = Node.new(data)
  end

  def count
    
  end

  def to_string
  end

end