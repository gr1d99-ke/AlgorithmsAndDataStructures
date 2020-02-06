# Stacks are LIFO
# Functions: push, pop, peek, length,

module DataStructures
  class Stacks
    def initialize
      @_collection = []
      @_count = 0
    end

    def push(item)
      @_collection << item
      increment!
    end

    def pop
      last_item = @_collection[-1]

      return if last_item.nil?

      @_collection = @_collection[0...-1]
      decrement!

      last_item
    end

    def peek
      @_collection[-1]
    end

    def length
      @_count
    end

    private

    def increment!
      @_count += 1
    end

    def decrement!
      @_count -= 1
    end
  end
end
