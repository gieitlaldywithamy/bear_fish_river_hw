class River

  attr_reader :name, :fishes
  attr_writer :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes || []
  end

  def add_fish(fish)
    @fishes << fish
  end

  # def remove_fish(fish)
  #   @fishes.delete(fish)
  # end

  def is_fish_swimming_here?(fish)
    return @fishes.include?(fish)
  end

  def remove_fish()
    return @fishes.pop()
  end

  def stock()
    return fishes.length
  end

end
