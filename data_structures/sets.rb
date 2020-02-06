# typed: false
# frozen_string_literal: true

# Has no duplicate items.
# Have no particular order
# Basic operations:
#   union(set1, set2) - combination of two sets
#   intersection(set1, set2) - common elements between two sets
#   difference(set1, set2) - elements in first set and not available in second set
#   subset(set1, set2) - returns integer, if set1 is a subset of set2, it returns 1 otherwise 0, AcB(A contained in B)
#
# Types:
#   - Immutable:
#       methods:
#         create(set, element)
#         add(set, element)
#         delete(set, element)
#         capacity(set) int
#
#   - Mutable(Dynamic)
#       methods:
#         elementOf(x, S) int either 0 or 1
#         empty(S) int
#         size(S)
#         build(items)

module DataStructures
  module Operations
    def union(other)
      new_set = Sets.new
      items.each { |item| new_set.add(item) }
      other.items.each { |item| new_set.add(item) }
      new_set
    end

    def intersect(other)
      new_set = Sets.new
      items.each { |item| new_set.add(item) if other.item_available?(item) }
      new_set
    end

    def diff(other)
      new_set = Sets.new
      items.each { |item| new_set.add(item) unless other.item_available?(item) }
      new_set
    end

    def subset(other)
      !items.select { |item| other.item_available?(item) }.empty?
    end
  end

  # Example:
  #   Sets.new do
  #     with_items 1, 2, 4
  #   end

  class Sets
    include Operations

    attr_accessor :items

    def initialize(*items, &block)
      @items = items

      if block_given?
        unless respond_to? :with_items
          self.class.send(:define_method, :with_items) do |*arr|
            @items = arr
          end
        end
        instance_eval(&block)
      end
    end

    def add(item)
      if items.include?(item)
        return false
      end

      @items << item
      true
    end

    def remove(item)
      return item_available?(item) unless item_available?(item)

      index = items.index(item)

      # handle item if it is at index 0
      if index.zero?
        @items = items.slice(index + 1, items.length)
        return true
      end

      # handle item if it is the last item
      if index.equal?(items.length - 1)
        @items = items.slice(0, items.length - 1)
        return true
      end

      @items = items.slice(0, index) + items.slice(index + 1, items.length)
      true
    end

    def size
      items.length
    end

    def item_available?(item)
      items.include?(item)
    end
  end
end
