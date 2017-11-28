require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestRiver < Minitest::Test

  def setup
    @fish1 = Fish.new("Michael")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Franco")
    @river1 = River.new("Nile", [@fish1, @fish2, @fish3])
  end

  def test_river_name
    assert_equal("Nile", @river1.name)
  end

  def test_river_add_fish
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    assert_equal(5, @river1.fishes.length)
  end

  def test_is_fish_swimming_here_aye
    assert_equal(true, @river1.is_fish_swimming_here?(@fish1))
  end

  def test_is_fish_swimming_here_naw
    @janegarvey = Fish.new("Jane Garvey")
    assert_equal(false, @river1.is_fish_swimming_here?(@janegarvey))
  end



end
