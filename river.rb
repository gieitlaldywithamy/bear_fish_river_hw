class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def add_fish(fish)
    @fishes << fish
  end
end
