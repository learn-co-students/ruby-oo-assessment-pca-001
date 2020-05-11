# Modify the Array class to support an odds? method that
# returns all the odd integers in the array.
class Array
  def odds?
    self.map{ |a| a % 2 != 0 }
  end
end