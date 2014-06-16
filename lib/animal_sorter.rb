# Build a class AnimalSorter that accepts a list of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter
  attr_accessor :animals

  SEA = ["marlin", "octopus", "fish"]
  LAND = ["aardvark", "cat", "elephant"]

  def initialize(animals)
    @animals = animals
  end

  def to_a
    animals.inject([[],[]]) do |array, animal|
      array[0] << animal if SEA.include?(animal)
      array[1] << animal if LAND.include?(animal)
      array
    end
  end

end