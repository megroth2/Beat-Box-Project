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
        count += 1
        current_item = current_item.next_node
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
        list_string << " " << current_item.data
        current_item = current_item.next_node
      end
      list_string << " " << current_item.data
    end
    list_string.strip
  end
  
  # The method below creates a new node and adds it to the beginning of the linked list.
  def prepend(data)
    current_head = @head
    if @head == nil
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head
    end
  end

  # The method below creates a new node and inserts it into the given position
  def insert(position,data)
    if @head == nil && position != 0
      "The linked list is too short for you to insert a node to this position."
    elsif @head == nil && position == 0
      @head = Node.new(data)
    elsif @head != nil && position == 0
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    else
      current_position = 1
      current_item = @head
      while current_position != position
        current_position += 1
        current_item = current_item.next_node
      end
      node_to_be_replaced = current_item.next_node
      current_item.next_node = Node.new(data)
      current_item.next_node.next_node = node_to_be_replaced
    end
  end

  # The method below returns a number of elements based on the given start position.
  def find(start_position,number_of_elements)
    return_string = ""
    if @head == nil
      "This linked list is empty"
    else
      current_position = 0
      current_item = @head
      while current_position != start_position
        current_position += 1
        current_item = current_item.next_node
      end
      number_of_elements.times do
      return_string << " " << current_item.data
      current_item = current_item.next_node
      end
    return_string.strip
    end
  end

  # The method below checks if a given text value is included in a list and returns true or false
  def includes?(text)
    if @head == nil
      false
    elsif @head.next_node == nil && @head.data != text
      false
    elsif
      current_item = @head
      while current_item.data != text
        current_item = current_item.next_node
      end
      true
    else
      false
    end
  end

  # The method below removes the last node from the list and returns it.
  def pop
    if @head != nil 
      current_item = @head
      prior_item = nil
      while current_item.next_node != nil
        prior_item = current_item
        current_item = current_item.next_node
      end
      prior_item.next_node = nil
      current_item.data
    end
  end

end