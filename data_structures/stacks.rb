# typed: true
# frozen_string_literal: true

# Stacks are LIFO
# Functions: push, pop, peek, length,

module DataStructures
  class Stacks
    def initialize
      @items = []
      @total_items = 0
    end

    def push(item)
      @items << item
      increment!
    end

    def pop
      last_item = @items[-1]

      return if last_item.nil?

      @items = @items[0...-1]
      decrement!

      last_item
    end

    def peek
      @items[-1]
    end

    def length
      @total_items
    end

    private

    def increment!
      @total_items += 1
    end

    def decrement!
      @total_items -= 1
    end
  end
end
