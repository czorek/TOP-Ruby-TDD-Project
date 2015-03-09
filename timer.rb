class Timer

  def seconds
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    elems = {hour: (@seconds/3600), minute: ((@seconds%3600)/60), secs: (@seconds % 60)}
    "#{padded(elems[:hour])}:#{padded(elems[:minute])}:#{padded(elems[:secs])}"
  end

  private
  def padded(n)
    n > 9 ? n : '0' + n.to_s
  end

end
