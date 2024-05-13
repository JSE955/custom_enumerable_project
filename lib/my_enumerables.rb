module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in (0...self.length)
      yield(self[i], i)
    end
    return self
  end

  def my_select
    result = []
    self.my_each do |elem|
      result.push(elem) if yield(elem)
    end
    result
  end

  def my_all?
    self.my_each { |elem| return false unless yield(elem)}
    return true
  end

  def my_any?
    self.my_each { |elem| return true if yield(elem)}
    return false
  end

  def my_none?
    self.my_each { |elem| return false if yield(elem)}
    return true
  end

  def my_count
    return self.length unless block_given?
    count = 0
    self.my_each { |elem| count += 1 if yield(elem)}
    count
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
