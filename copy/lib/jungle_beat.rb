require_relative 'linked_list'
require_relative 'node'
require 'pry'

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    beats = data.split(" ")
    beats.each do |beat|
      @list.append(beat)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 Boing #{beats}`
    beats
  end
end
