# Modify the Array class to support an odds? method that
# returns all the odd integers in the array.

class Array
  def odds?
    self.map do |number|
      number.odd? ? number = true : number = false
    end
  end
end