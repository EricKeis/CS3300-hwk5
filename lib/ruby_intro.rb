# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0

  arr.each do |item|
    total += item
  end

  return total
end

def max_2_sum arr
  arr = arr.sort

  return arr.empty? ? 0 : arr.size == 1 ? arr[-1] : arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  isValid = false
  
  if arr.length >= 2
    arr.each_index do |idx1|
      arr.each_index do |idx2|
        if idx1 != idx2 && arr[idx1] + arr[idx2] == n
          isValid = true
        end
      end
    end
  end
  return isValid
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.start_with?(/^[bcdfghjklmnpqrstvwxysBCDFGHJKLMNPQRSTVWXYS]/)
end

def binary_multiple_of_4? s
  return s == '0' ? true : s =~ /^[01]+00$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    if !isbn.empty?  
      @isbn = isbn
    else
      raise ArgumentError
    end
    
    if price > 0
      @price = price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    return format('$%.2f', @price)
  end
end
