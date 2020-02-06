# typed: false
# frozen_string_literal: true

require './tests/minitest_helper'

class TestSets < Minitest::Test
  def setup
    @set = DataStructures::Sets.new do
      with_items 1
    end
  end

  def test_add
    assert !@set.add(1)
    assert @set.add(2)
  end

  def test_remove_first_item
    @set.add(2)
    @set.add(3)

    assert @set.remove(1)
    assert !@set.remove(1)
  end

  def test_remove_last_item
    @set.add(2)
    @set.add(3)

    assert @set.remove(3)
    assert !@set.remove(3)
  end

  def test_remove_item_at_random_position
    @set.add(2)
    @set.add(3)
    @set.add(4)

    assert @set.remove(3)
    assert !@set.remove(3)
  end

  def test_size
    assert_equal @set.size, 1
  end

  def test_union
    @other_set = DataStructures::Sets.new { with_items 2, 3 }

    result = DataStructures::Sets.new { with_items 1, 2, 3 }

    assert_equal @set.union(@other_set).items, result.items
  end

  def test_intersection
    @other_set = DataStructures::Sets.new { with_items 2, 3 }

    @set.add(2)
    @set.add(4)

    result = DataStructures::Sets.new { with_items 2 }

    assert_equal @set.intersect(@other_set).items, result.items
  end

  def test_difference
    @other_set = DataStructures::Sets.new { with_items 2, 3 }

    @set.add(2)

    result = DataStructures::Sets.new { with_items 1 }

    assert_equal @set.diff(@other_set).items, result.items
  end

  def test_subset
    @other_set1 = DataStructures::Sets.new { with_items 1, 2, 3 }
    @other_set2 = DataStructures::Sets.new { with_items 2, 3 }

    assert @set.subset(@other_set1)
    assert !@set.subset(@other_set2)
  end
end
