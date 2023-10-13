require 'pry'
require './lib/node'

RSpec.describe Node do
  # The test below verifies that calling the initialize method creates an instance of a node object.
  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end

  # The test below verifies that when a new node is created, an argument is passed in and assigned to the data attribute.
  it 'has data' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end

  # The test below verifies that the data attribute can be assigned dynamically.
  it 'has a different data' do
    node = Node.new("doop")

    expect(node.data).to eq("doop")
  end

  # The test below verifies that when a new node is created, a nil value is assigned to the next node attribute.
  it 'has next_node' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
  end

end