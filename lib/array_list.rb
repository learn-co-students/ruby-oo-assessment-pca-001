class Array
  def make_list
    map!.with_index { |e, i| "#{i+1}. #{e}" }
  end
end
