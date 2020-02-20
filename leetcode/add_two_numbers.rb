# Definition for singly-linked list.
 class ListNode
     attr_accessor :val, :next
     def initialize(val)
         @val = val
         @next = nil
     end
 end

 l1_2 = ListNode.new(3)
 l1_1 = ListNode.new(4)
 l1_0 = ListNode.new(2)

 l1_0.next = l1_1
 l1_1.next = l1_2


 l2_2 = ListNode.new(4)
 l2_1 = ListNode.new(6)
 l2_0 = ListNode.new(5)

 l2_0.next = l2_1
 l2_1.next =l2_2

 l1 = l1_1
 l2 = l2_2



# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  p l1
end

add_two_numbers(l1, l2)