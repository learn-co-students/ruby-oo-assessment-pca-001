require_relative "../lib/path.rb" # Code your solution here.

# Code some tests for path.rb.

# There are three methods on the Path class.

# The normalize_path method will return an absolute
# path to the file no matter what kind of path sent
# to it.

# The absolute_path? method will return true if the
# path passed to it is absolute.

# The relative_path? method will return true if the
# path passed to it is relative.

# Write some tests that spec it out.

# Use the other tests in this suite as guides.

# You should should write at least three describe blocks,
# one for each method.

# Test the negative and positive results, for example,
# when describing absolute_path? make sure to test
# the results when sent a relative and absolute path.

describe "Path" do
  describe "#initialize" do
    it "initializes with a path" do
      expect(Path.new("../lib").path).to eq("../lib")
    end
  end
  describe "#absolute_path?" do
    it "checks for absolute path" do
      path = Path.new("/lib")
      expect(path.absolute_path?).to eq(true)
    end
  end
  describe "#relative_path?" do
    it "checks for a relative path" do
      path = Path.new("lib")
      expect(path.relative_path?).to eq(true)
    end
  end
  describe "#normailze_path" do
    it "normaizes a path" do
      path = Path.new("lib")
      expect(path.normalize_path).to eq("#{Dir.pwd}/lib")
    end
  end
end