# MattHacking Ruby HW0





# PART 1

# Define a method sum which takes an array of integers as an argument and returns the sum of its elements.
# For an empty array it should return zero.
def sum(array)
    array.inject(0, :+)
end

# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(array)
  sum(array.sort.last(2))
end

# Define a method sum_to_n? which takes an array of integers and an additional integer, n,
# as arguments and returns true if any two elements in the array of integers sum to n.
# An empty array should sum to zero by definition.

def sum_to_n?(array, n)
    array.product(array).any? {|couple| sum(couple) == n}
end








#  PART 2

# Define a method hello(name) that takes a string representing a name and
# returns the string "Hello, " concatenated with the name.

def hello(name)
  "Hello, "
end

# Define a method starts_with_consonant?(s) that takes a string and
# returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for nonletters!

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 unless s == "0"
  end
  false
end







# PART 3


# Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string
# represents a binary number that is a multiple of 4.
# NOTE: be sure it returns false if the string is not a valid binary number!

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end