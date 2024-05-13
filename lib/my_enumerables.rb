module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in (0...self.length)
      yield(self[i], i)
    end
    return self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    self.each { |e| yield(e)}
    return self
  end
end
