require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < Minitest::Test

  def setup
    @fish2 = Fish.new("Amelia")
    @fish3 = Fish.new("Grace Hopper")
  end

  def test_fish_name
    assert_equal("Amelia", @fish2.name)
  end
end
