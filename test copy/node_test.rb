=begin
There are tons of ways to implement a linked list.
By far the most common is using a self-referential
structure as the node, with a data member and a next
member marking the link.
=end


require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'
require 'pry'


class NodeTest < Minitest::Test
    def test_node_exists
        node = Node.new("Burke")
        assert_instance_of Node, node
    end

    def test_there_is_a_surname
        node = Node.new("Burke")
        assert_equal "Burke", node.surname
    end

    def test_next_node_starts_as_nil
        #blahblahblah
        assert_nil
    end
end
