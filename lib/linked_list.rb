require 'pry'
require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_reader :count

  def initialize
    @head    = nil
    @count   = 0
  end

  def append(value)
    @count += 1
    if  head.nil?
        @head   = Node.new(value)
    else
      head.next_node   = Node.new(value)
    end
    value
  end

  def to_string
    return "" unless head
    # return "" if head == nil
    string  = head.value
    node    = head.next_node
    while node
      string = "#{string} #{node.value}"
      node = node.next_node
    end
    string
  end


end
