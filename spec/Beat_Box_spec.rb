require 'pry'
require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe Beat_Box do

  # The test below verifies that calling the initialize method creates an instance of a beat box object.
  it 'exists' do
    node = Node.new("plop")
    list = LinkedList.new
    bb = Beat_Box.new
    
    expect(bb).to be_instance_of(Beat_Box)
  end

  # The test below verifies that when a new beat box is created, a linked list is created and assigned to the list attribute.
  it 'has a list' do
    bb = Beat_Box.new
  
  expect(bb.list.to_string).to eq()
  end

  it 'has head' do
    node = Node.new("plop")
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

# The play method is not tested.

end