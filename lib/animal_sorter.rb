# Build a class AnimalSorter that accepts a list of animals on
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter
  SEA_ANIMALS = %w[octopus marlin fish].freeze
  LAND_ANIMALS = %w[aardvark cat elephant].freeze
  def initialize(animals)
    @animals = animals
  end

  def to_a
    land_animals = @animals.select { |animal| LAND_ANIMALS.include?(animal) }
    sea_animals = @animals.select { |animal| SEA_ANIMALS.include?(animal) }
    [sea_animals, land_animals]
  end
end
