require 'pry'
require './lib/node'

class LinkedList
  attr_reader :head

   # The method below creates an instance of the linked list object. It passes a value of nil to the @head attribute.
  def initialize
    @head = nil
  end

  # The method below creates a new node and adds it to the end of the list.
  # Create a new node
  # if list.head is empty, assign the new node to the list.head
  # otherwise, iterate through until you find the node in the list where next_node is empty.
  # Assign the new item as the next_node.
  def append(data)
    new_item = Node.new(data)
    if @head == nil
      @head = new_item
    else
      current_item = @head
      while current_item.next_node != nil
        current_item = current_item.next_node 
      end
      current_item.next_node = new_item
    end
  end

  # The method below returns the count of node elements in the linked list.
  def count
    if @head == nil
      count = 0
    else
      count = 1
      current_item = @head
      while current_item.next_node != nil
        current_item = current_item.next_node
        count += 1
      end
    end
    count
  end

  # The method below returns a string of node elements in the linked list.
  def to_string
    list_string = ""
    current_item = @head
    if @head == nil
      return list_string
    else
      while current_item.next_node != nil
        list_string << current_item.data
        current_item = current_item.next_node
      end
      list_string << current_item.data
    end
    list_string
  end

end