require 'pry'
require './lib/node'
require './lib/linked_list'

class Beat_Box
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def play
    # say -r 500 @list.to_string
  end

end