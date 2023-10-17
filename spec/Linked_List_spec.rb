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
  it 'appends a node to list as the next node' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node).to eq(nil)
  end

   # The test below verifies that when the appends method is called on a linked list object, where head and next node is not nil, it creates a new node and appends it to the linked list.
   it 'appends a different node to list as the next node' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("pop")

    expect(list.head.next_node.next_node.data).to eq("pop")
    expect(list.head.next_node.next_node.next_node).to eq(nil)
  end

  it 'counts how many nodes are in the list' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    
    expect(list.count).to eq(2)
  end

  it 'generates a string of elements in the list' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end

  it 'prepends a node to the front of the list' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.prepend("dop")

  expect(list.to_string).to eq("dop plop suu")
  end

  it 'inserts a node at the given position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1,"woo")
  
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'inserts a node at another given position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(2,"boo")
  
    expect(list.to_string).to eq("dop plop boo suu")
  end

  it 'finds and returns a number of elements based on the given start position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
  
    expect(list.find(2,1)).to eq("shi")
  end

  it 'finds and returns a different number of elements based on a different start position' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    # binding.pry
  
    expect(list.find(1,3)).to eq("woo shi shu")
  end

end