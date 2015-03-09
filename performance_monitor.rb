def measure(num=1)
  p = Time.now
  num.times {yield}
  (Time.now - p)/num
end
