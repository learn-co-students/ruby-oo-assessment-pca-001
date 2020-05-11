# Build a class AnimalSorter that accepts a list of animals on
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
class AnimalSorter
  attr_accessor :array
  def initialize(animals)
    array = [[],[]]
    small_set_sea_animals = ["marlin", "octopus", "fish"]
    animals.each { |animal| small_set_sea_animals.include?(animal) ? array[0] << animal : array[1] << animal }
    @array = array
  end
  def to_a
    @array
  end
end
