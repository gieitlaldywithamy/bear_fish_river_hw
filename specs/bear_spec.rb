require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

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
    @bear1.take_fish_from_river(@fish1, @river1)
  end
end


# - A bear should have a name e.g. "Yogi"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river
# - A river should lose a fish when a bear takes a fish
