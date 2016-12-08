require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_jungle_beat_is_a_class
    jb = JungleBeat.new
    assert_equal JungleBeat, jb.class
  end

  def test_head_is_nil
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_append_will_split_and_add_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_jungle_beat_count
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal 3, jb.count
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_jungle_beats_counts_and_plays
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.count
    assert_equal 6, jb.list.count
    assert_equal "deep doo ditt woo hoo shu", jb.play
  end

end
