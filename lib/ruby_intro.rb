# When done, submit this entire file to the autograder.

# Part 1


def sum arr
  if arr.empty?
    return 0
  else
    total = 0
    arr.each { |i| total += i}
  end
  return total
end


def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    s = arr.sort.reverse
    return s[0] + s[1]
  end
end


def sum_to_n? arr, n
  if arr.empty?
    return 0 == n
  end
  
  for i in 0...arr.length
    for j in 0...arr.length
      if i != j && arr[i] + arr[j] == n
        print arr[i], arr[j]
        return true
      else
        j += 1
      end
    end
    i += 1
  end
  return false
end


# Part 2

def hello(name)
  return "Hello, " + name
end



def allLetters(str)
  return str[/[a-zA-Z]+/]  == str
end

def starts_with_consonant? s
  notConsonants = ["A", "E", "I", "O", "U"]
  if s == ""
    return false
  end
  s.upcase!
  if allLetters(s[0]) == false or notConsonants.include? s[0]
    return false
  else
    return true
  end
end





def binary_multiple_of_4? s
  if s == ""
    return false
  end
  
  num = 0
  x = s.length - 1
  index = 0
  while x >= 0
    digit = s[x]
    if digit != "1" and digit != "0"
      return false
    elsif digit == "1"
      num += (2**index)
    end
    x -= 1
    index += 1
  end
  return num % 4 == 0
end


# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError
    end
    
    @isbn, @price = isbn, price
  end 
  
  #Getters
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  #Setters
  def isbn= isbn
    @isbn = isbn
  end
  
  def price= price
    @price = price
  end
  
  def price_as_string
    stringInt = @price.to_s
    dot = stringInt.index('.')
    if dot == nil
      return "$" + stringInt + ".00"
    elsif stringInt.length - (dot + 1) < 2
      return "$" + stringInt + "0"
    else
      return "$" + stringInt
    end
  end
end