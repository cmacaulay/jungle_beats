require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

# Iteration 0 - Node Basics
  def test_node_has_a_sound
    node = Node.new("plop")
    assert_equal "plop", node.sound
  end

  def test_node_has_next_node_method
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

# Iteration 1
end
