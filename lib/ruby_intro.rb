# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
    array.inject(0, :+)
end

def max_2_sum(array)
  sum(array.sort.last(2))
end

def sum_to_n?(array, n)
    array.product(array).any? {|couple| sum(couple) == n}
end

# Part 2

def hello(name)
  "Hello, "
end

def starts_with_consonant? s
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
