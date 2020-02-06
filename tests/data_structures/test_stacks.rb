# typed: false
require './tests/minitest_helper'

class TestStacks < Minitest::Test
  def setup
    @stack = ::DataStructures::Stacks.new
  end

  def test_length
    @stack.push(1)

    assert @stack.length == 1
  end

  def test_push
    assert @stack.length == 0
    @stack.push(1)

    assert @stack.length == 1
  end

  def test_pop
    assert @stack.length == 0

    @stack.push(2)
    @stack.push(3)

    assert @stack.pop == 3
    assert @stack.length == 1
  end

  def test_pop_when_empty
    assert_nil @stack.pop
    assert @stack.pop == nil
  end

  def test_peek
    assert @stack.length == 0

    @stack.push(1)
    @stack.push(2)
    @stack.push(3)

    assert @stack.peek == 3
  end
end

