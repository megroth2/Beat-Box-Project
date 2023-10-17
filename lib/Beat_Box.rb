require 'pry'
require './lib/node'
require './lib/linked_list'

class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(beats)

  end

  def play
    # say -r 500 @list.to_string
  end

end