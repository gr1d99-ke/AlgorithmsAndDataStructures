"""Add a couple methods to our LinkedList class,
and use that to implement a Stack.
You have 4 functions below to fill in:
insert_first, delete_first, push, and pop.
Think about this while you're implementing:
why is it easier to add an "insert_first"
function than just use "append"?"""


class Element(object):
    def __init__(self, value):
        self.value = value
        self.next = None

    def __repr__(self):
        return "<%s(%r)>" % (self.__class__.__name__, self.__dict__)


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

    def insert_first(self, new_element):
        "Insert new element as the head of the LinkedList"

        # get currentHead
        # if currentHead:
        #   set newElement as the head
        #   set newElement next value as currentHead
        #   return currentHead
        # else:
        #   set newElement as head
        # return head

        current = self.head

        if current:
            self.head = new_element
            self.head.next = current
        else:
            self.head = new_element

        return self.head

    def delete_first(self):
        "Delete the first (head) element in the LinkedList as return it"

        # get currentHead
        # if currentHead:
        #   if not currentHead.next:
        #       set currentHead to null
        #   else:
        #       setNext as the currentHead
        #
        # return currentHead

        current = self.head

        if current:
            if not current.next:
                self.head = None
            else:
                self.head = current.next

            current.next = None
            return current

        return None

    def __repr__(self):
        return "<%s(%r)>" % (self.__class__.__name__, self.__dict__)


class Stack(object):
    def __init__(self, top=None):
        self.ll = LinkedList(top)

    def push(self, new_element):
        "Push (add) a new element onto the top of the stack"
        return self.ll.insert_first(new_element)

    def pop(self):
        "Pop (remove) the first element off the top of the stack and return it"
        return self.ll.delete_first()

    def __repr__(self):
        return "<%s(%r)>" % (self.__class__.__name__, self.__dict__)


# Test cases
# Set up some Elements
e1 = Element(1)
e2 = Element(2)
e3 = Element(3)
e4 = Element(4)

# Start setting up a Stack
stack = Stack(e1)


# Test stack functionality
stack.push(e2)
stack.push(e3)
print(stack.pop().value)
print("New Stack")
print(stack)
print(stack.pop().value)
print("New Stack")
print(stack)
print(stack.pop().value)
print(stack.pop())
print("New Stack")
print(stack)
print(stack.push(e4))
print("New Stack")
print(stack)
print(stack.pop().value)
print("New Stack")
print(stack)
