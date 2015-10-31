# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject { |sum, number| sum + number }
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.max(2).inject { |sum, n| sum + n }
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.permutation(2).any? {|num1, num2| num1 + num2 == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if (/\W/.match(s) || s.class == Fixnum || s.empty?)
  /(^a|^e|^i|^o|^u)/i.match(s.slice(0)).nil? ? true : false
end

def binary_multiple_of_4? s
  return false if
  s.unpack("B*").join.to_i % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{sprintf "%.2f", @price}"
  end
end
