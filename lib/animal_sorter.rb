# Build a class AnimalSorter that accepts a list of animals and a sorting criteria on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
class AnimalSorter
  attr_accessor :animals, :criteria

  def initialize(animals, criteria)
    @animals = animals
    @criteria = criteria
  end

  def to_a
    animals.inject([[], []]) do |array, animal|
      array[0] = animals.select{|animal| @criteria[:sea].include?(animal)}
      array[1] = animals.select{|animal| @criteria[:land].include?(animal)}
      array
    end
  end
end