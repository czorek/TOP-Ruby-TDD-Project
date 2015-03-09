class Book
  
  def title
    @title
  end

  def title=(title)
    @title = titleize(title)
  end

  def titleize(word)
    arr = word.split
    little_words = ['and', 'over', 'the', 'in', 'of', 'a', 'an']
    arr[0].capitalize!
    arr.each do |w|
      unless little_words.include? w
        w.capitalize!
      end
    end
    arr.join(' ')
  end

end



