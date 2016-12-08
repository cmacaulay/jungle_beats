require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_head_next_node_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
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


  def test_list_will_append_and_prepend
    list = LinkedList.new
    list.append("plop")
    assert_equal "plop", list.to_string
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_list_will_append_prepend_and_insert
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_can_find_data_in_specific_nodes
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_list_data_includes_x_and_can_remove_last_node
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")
    assert list.includes?("deep")
    refute list.includes?("dep")
    list.pop
    list.pop
    list.to_string
    binding.pry
  end

  end
