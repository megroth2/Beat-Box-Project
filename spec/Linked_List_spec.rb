require 'pry'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  # The test below verifies that calling the initialize method creates an instance of a linked list object.
  it 'exists' do
    node = Node.new("plop")
    list = LinkedList.new
    
    expect(list).to be_instance_of(LinkedList)
  end

  # The test below verifies that when a new linked list is created, a nil value is assigned to the head attribute.
  it 'has head' do
    node = Node.new("plop")
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  # The test below verifies that when the appends method is called on a linked list object where head is nil, it creates a new node and sets the head of the linked list.
  it 'appends a node to the list as the head' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  # The test below verifies that when the appends method is called on a linked list object, where head is not nil, it creates a new node and appends it to the linked list.
  xit 'appends a node to list as the next node' do
    list = LinkedList.new
    list.append("doop")
    list.append("plop")

    expect(list.head.next_node.data).to eq("plop")
    expect(list.head.next_node.next_node).to eq(nil)
  end

   # The test below verifies that when the appends method is called on a linked list object, where head and next node is not nil, it creates a new node and appends it to the linked list.
   xit 'appends a different node to list as the next node' do
    list = LinkedList.new
    list.append("doop")
    list.append("plop")
    list.append("pop")

    expect(list.head.next_node.next_node.data).to eq("pop")
    expect(list.head.next_node..next_node.next_node).to eq(nil)
  end


## *****commmit "add appends method to the Linked List class and spec"


  xit 'counts how many nodes are in the list' do
    expect(@list.count).to eq(1)
  end

  xit 'generates a string of elements in the list' do
    list = LinkedList.new
    list.append("doop")

    expect(@list.to_string).to eq("doop")
  end

end