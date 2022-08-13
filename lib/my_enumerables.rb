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

  def my_select
    arr = self
    arr_return = []
    for el in arr do
      arr_return.push(el) if yield(el)
    end
    arr_return
  end

  def my_all?
    arr = self
    for el in arr do
      return false unless yield(el)
    end
    true
  end

  def my_any?
    arr = self
    for el in arr do
      return true if yield(el)
    end
    false
  end

  def my_none?
    arr = self
    for el in arr do
      return false if yield(el)
    end
    true
  end

  def my_count
    count = 0
    arr = self
    return arr.length unless block_given?
    for el in arr do
      count += 1 if yield(el)
    end
    count
  end

  def my_map
    arr = self
    arr_return = []
    for el in arr do
      arr_return.push(yield(el))
    end
    arr_return
  end

  def my_inject(initial_value)
    arr = self
    return_value = initial_value
    for el in arr do
      return_value = yield(return_value, el)
    end
    return_value
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
