class AnimalSorter
  def initialize(animals)
    @animals = animals
    @land_animals = ["aardvark", "cat", "elephant"]
  end

  def to_a
    sea_creatures = []
    land_animals = []
    @animals.each do |animal|
      if @land_animals.include?(animal)
        land_animals << animal
      else
        sea_creatures << animal
      end
    end
    @animals.clear << sea_creatures
    @animals << land_animals
  end
end
