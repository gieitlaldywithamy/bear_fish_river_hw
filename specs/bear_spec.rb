require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")


class TestBear < Minitest::Test
  def setup
    @bear1 = Bear.new("Yogi")
    @bear2 = Bear.new("Father")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_starts_with_empty_stomach
    assert_equal([], @bear1.stomach)
  end
end


# - A bear should have a name e.g. "Yogi"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river
# - A river should lose a fish when a bear takes a fish
