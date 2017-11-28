class Bear

  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat_fish(fish)
     @stomach.push(fish)
  end

  def take_fish_from_river(fish, river)
    if river.is_fish_swimming_here?(fish)
      river.remove_fish(fish)
      eat_fish(fish)
    end

  end
  # def take_fish_from_river(river, fish)
  #   if (river.is_fish_swimming_here?(fish))
  #     river.remove_fish(fish)
  #     @bear.eat_fish(fish)
  #   end
  # end
  #
  # def eat_fish(fish)
  #   @stomach.push(fish)
  # end
  #
  # def fish_count
  #   return @fish_population.count
  # end
  #
  # def stomach_fish_count
  #   return @stomach.count
  # end
  #
  # def pick_fish_from_river(river)
  #   fish = river.get_fish()
  #   @stomach.push(fish)
  # end

end
