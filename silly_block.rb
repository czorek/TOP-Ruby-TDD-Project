def reverser(&block)
  p = yield if block_given?
  arr = p.split(' ')
  arr.each {|s| s.reverse!}
  arr.join(' ')
end

def adder(num=1, &block)
  p = yield if block_given?
  p += num
end

def repeater(num=1, &block)
  num.times {yield}
end
