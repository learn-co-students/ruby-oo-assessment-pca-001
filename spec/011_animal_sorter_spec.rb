require_relative '../lib/animal_sorter.rb' 

describe "AnimalSorter" do
  describe '#to_a' do
    let(:animals) { ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"] }
    let(:criteria) { {:sea => %w[marlin octopus fish], :land => %w[aardvark cat elephant]} }

    it 'sorts sea and land animals' do
      sorted_animals = [
        ["marlin", "octopus", "fish"],
        ["aardvark", "cat", "elephant"]
      ]

      expect(AnimalSorter.new(animals, criteria).to_a).to eq sorted_animals
    end

    it 'returns sea creatures first' do
      expect(AnimalSorter.new(animals, criteria).to_a.first).to include "marlin"
    end

    it 'returns land animals second' do
      expect(AnimalSorter.new(animals, criteria).to_a.last).to include "aardvark"
    end
  end
end