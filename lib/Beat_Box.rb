require 'pry'
require './lib/node'
require './lib/linked_list'

class Beat_Box
  attr_reader :list
  attr_accessor

  def initialize
    @list = LinkedList.new
  end

  def play

  end

end