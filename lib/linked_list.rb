require 'pry'
require_relative 'node'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head    = nil
    @count   = 0
    @string  = []
  end

  def prepend(data)
    @string.unshift(data)
    @count += 1
    head = Node.new(data)
    head.next_node = @head
    @head = head
  end

  def append(data)
    @string << data
    @count += 1
    if  head.nil?
        @head   = Node.new(data)
    else
      current = head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
    data
  end

  def insert(index, data)
    @count += 1
    @string.insert(index, data)

    node = Node.new(data)
    current = @head
    counter = 0

    until counter == index
      counter += 1
      current = current.next_node
    end
    node.next_node = current

    counter = 0
    current = @head
    until counter == index-1
      counter += 1
      current = current.next_node
    end
    current.next_node = node
  end

  def pop
    @string.pop
    current = @head

    if @head.nil?
      return "No nodes here."
    else
      until current.next_node.next_node == nil
        current = current.next_node
      end
    current.next_node = nil
  end
  end

  def find(index, how_many)
    counter = 0
    current = @head

    until counter == index
      counter += 1
      current = current.next_node
    end

    found = ""
    how_many.times do
      found << current.data + " "
      current = current.next_node
    end
    found.chop
  end

  def includes?(data)
    @string.each do |node|
      if node == data
        return true
      else
        return false
      end
    end
  end

  def to_string
    @string.join(" ")
  end

end
