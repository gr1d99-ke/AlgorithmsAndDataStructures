class Node
  attr_accessor :value, :_next

  def initialize(value, _next: nil)
    @value = value
    @_next = _next
  end
end


class LinkedList
  attr_reader :head

  def initialize(head)
    @head = head
  end

  def append(node)
    current = head

    if head
      while current._next
        current = current._next
      end

      current._next = node
    else
      @head = node
    end
  end
end
