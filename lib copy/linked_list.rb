require '../lib/node'

class LinkedList


  def initialize
      @head = nil
  end

  def append(surname)
    if @head == nil
       @head = Node.new(surname)
    else
      node = @head
      until node.next_node.nil?
        node = node.next_node
      end
      node.next_node = Node.new(surname)
    end
  end

  def count
      count = 0
         until @head.nil?
         current = head.next_node
         count += 1
      end
      count
  end

  def to_string
    welcome =  "The #{@head.surname} family, "
    (count - 1).times do
    welcome << "followed by the #{@head.next_node.surname} family"
    end
    return welcome
  end

end
