require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class TestBear < Minitest::Test
  def setup
    @bear1 = Bear.new("Yogi")
    @bear2 = Bear.new("Father")
    @fish1 = Fish.new("Little Miss Dot to Draw")
    @river1 = River.new("Nile", [])
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_starts_with_empty_stomach
    assert_equal([], @bear1.stomach)
  end

  def test_bear_can_take_fish_from_river
    @bear1.take_fish_from_river(@river1)
    assert_equal(1, @bear1.stomach.count)
  end

  def test_bear_can_eat
    @bear1.eat_fish(@fish1)
    assert_equal([@fish1],@bear1.stomach)
  end

  def bear_roar
    assert_equal("ROAR!", @bear1.roar)
  end

  def bear_food_count
    @bear2.eat_fish(@fish1)
    @bear2.eat_fish(@fish2)
    assert_equal(2, @bear2.food_count)
  end

end
