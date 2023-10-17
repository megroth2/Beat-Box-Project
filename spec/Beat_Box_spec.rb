require 'pry'
require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe Beat_Box do

  it 'exists' do
    node = Node.new("plop")
    list = LinkedList.new
    song = Beat_Box.new
    
    expect(song).to be_instance_of(Beat_Box)
  end

end