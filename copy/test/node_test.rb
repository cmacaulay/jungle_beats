require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

# Iteration 0 - Node Basics
  def test_node_is_a_class
    node = Node.new("slurp")
    assert_equal Node, node.class
  end

  def test_node_has_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_has_next_node_method
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

# Iteration 1
end
