require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'

require 'pry'

#So will I have to create each node in a new test or
#is there a great way to combine the whole gang?
#I feel like its the point of the exercise but I'm
#not sure if I need to have them all on one list or
#just in the last instance of LinkedList.

class LinkedListTest < MiniTest::Test
  def test_linked_list_exists
      list = LinkedList.new
      assert_instance_of LinkedList, list
  end

  def test_head_for_nil
      list = LinkedList.new
      assert_nil list.head
  end

  def test_for_append
      list = LinkedList.new
      assert_instance_of Node, list.append("West")
  end
  def test_for_a_next_node
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_next_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_counts
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_there_are_some_families
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end


  def test_there_is_another_node
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    assert_instance_of Node, list.append("Rhodes")
  end

end
