def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  s = 0
  array.each {|x| s += x}
  s
end

def multiply(array)
  prod = 1
  array.each {|x| prod *= x}
  prod
end

def power(x, y)
  x ** y
end

def factorial(num)
  sum = 1
  unless num == 0
    sum = num * factorial(num-1)
  end
  sum
end
