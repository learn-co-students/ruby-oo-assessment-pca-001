# Modify the Array class to support an odds? method that
# returns all the odd integers in the array.

class Array
  def odds?
    map do |elem|
      if elem.respond_to?(:odd?) && elem.odd?
        true
      else
        false
      end
    end
  end
end
