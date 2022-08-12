module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    arr = self
    for el in arr do
      yield(el, i)
      i += 1
    end
    arr
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    arr = self
    for el in arr do
      yield(el)
    end
    arr
  end
end
