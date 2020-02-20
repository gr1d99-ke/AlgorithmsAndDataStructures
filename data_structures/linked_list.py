import pdb

"""The LinkedList code from before is provided below.
Add three functions to the LinkedList.
"get_position" returns the element at a certain position.
The "insert" function will add an element to a particular
spot in the list.
"delete" will delete the first element with that
particular value.
Then, use "Test Run" and "Submit" to run the test cases
at the bottom."""


class Element(object):
    def __init__(self, value):
        self.value = value
        self.next = None

    def __str__(self):
        return "< {} {} {} >".format(self.__class__.__name__, self.value, self.next)


class LinkedList(object):
    def __init__(self, head=None):
        self.head = head

    def append(self, new_element):
        current = self.head
        if self.head:
            while current.next:
                current = current.next
            current.next = new_element
        else:
            self.head = new_element

    def get_position(self, position):
        """Get an element from a particular position.
        Assume the first position is "1".
        Return "None" if position is not in the list. O(1)"""
        if position < 1:
            return None

        current = self.head

        if self.head:
            current_position = 1

            while current and current_position <= position:
                if current_position == position:
                    return current
                current = current.next
                current_position += 1

        return None

    def insert(self, new_element, position):
        """Insert a new node at the given position.
        Assume the first position is "1".
        Inserting at position 3 means between
        the 2nd and 3rd elements. O(1)"""

        # account for an empty linked list
        if not self.head:
            self.head = new_element
            return self.head

        # account for only head
        current = self.head
        if not current.next:
            current.next = new_element
            return current

        if position > 1:
            prev_node = self.get_position(position - 1)
            current = self.get_position(position)

            new_element.next = current
            prev_node.next = new_element
            return self.head

        return None

    def delete(self, value):
        """Delete the first node with a given value."""

        current = self.head

        if self.head:
            # solve for a scenario where the node is the head,
            # we need to re-assign the next node as the initial
            # head
            if current.value == value:
                self.head = current.next
                return self

            # solve for a scenario where there is no next node
            if current.next is None:
                self.head = None

            prev_node = current

            while current.next:
                if current.value == value:
                    prev_node.next = current.next
                    return self

                prev_node = current
                current = current.next

        return self

    def __str__(self):
        return "{}".format(self.head)



# Test cases
# Set up some Elements
e1 = Element(1)
e2 = Element(2)
e3 = Element(3)
e4 = Element(4)

# Start setting up a LinkedList
ll = LinkedList(e1)
ll.append(e2)
ll.append(e3)

# Test get_position
# Should print 3
assert ll.head.next.next.value == 3
# Should also print 3
assert ll.get_position(3).value == 3

# Test insert
ll.insert(e4, 3)
# Should print 4 now
assert ll.get_position(3).value == 4

# Test delete
ll.delete(1)
# Should print 2 now
assert ll.get_position(1).value == 2
# Should print 4 now
assert ll.get_position(2).value == 4
# Should print 3 now
assert ll.get_position(3).value == 3