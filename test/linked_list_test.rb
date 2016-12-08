require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
    binding.pry
  end

  def test_append_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
binding.pry
  end

  def test_head_next_node_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
# binding.pry
  end

  def test_list_knows_it_has_zero_nodes
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_list_knows_how_many_nodes_it_has
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_list_will_change_to_string
    list = LinkedList.new
    assert_equal "", list.to_string
  end

  def test_list_with_data_will_change_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_list_to_string_with_two_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end
end
