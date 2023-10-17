require 'pry'
require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do

  # The test below verifies that calling the initialize method creates an instance of a beat box object.
  it 'exists' do
    node = Node.new("plop")
    list = LinkedList.new
    bb = BeatBox.new
    
    expect(bb).to be_instance_of(Beat_Box)
  end

  # The test below verifies that when a new beat box is created, a linked list is created and assigned to the list attribute.
  it 'has a list' do
    bb = BeatBox.new
  
    expect(bb.list.head).to eq(nil)
  end

  # The test below verifies that calling the append method adds any number of nodes to the list.
  it 'appends multiple nodes' do
    bb = BeatBox.new
    bb.append("deep doo ditt")

    expect(bb.list.to_string).to eq("deep doo ditt")
    expect(bb.list.count).to eq(3)
  end

# The play method is not tested.

end