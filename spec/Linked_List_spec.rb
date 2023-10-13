require 'pry'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  # Test that the class can create instances of the "linked_list" object.
  it 'exists' do
    node = Node.new("plop")
    list = LinkedList.new
    
    expect(list).to be_instance_of(LinkedList)
  end

  # Test that when a linked_list instance is created, the "head" attribute is assigned the nil value
  it 'has head' do
    node = Node.new("plop")
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  # Test that when the "appends" method is called on a node instance, it adds the node to the list.
  it 'appends a node to the list' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head).to eq(@node)
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  xit 'appends a second node to list' do
    node = Node.new("doop")
    list = LinkedList.new
    list.append("doop")
    list.append("plop")

    expect(list).to eq("doop plop")
  end

  it 'counts how many nodes are in the list' do
# pry(main)> list.count
# #=> 1
  end

  it 'generates a string of elements in the list' do
# pry(main)> list.to_string
# #=> "doop"
  end

end