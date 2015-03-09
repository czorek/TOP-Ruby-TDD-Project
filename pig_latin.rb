def translate(word)
  vowels = 'aeiouy'.split('')
  cons = 'bcdfghjklmnqprstvwxz'.split('')
  cons << 'qu'
  suffix = 'ay'
  words = word.split(' ')
  s = []

  if words.length > 1
    words.each {|w| s << translate(w)}
    s.join(' ')
  elsif cons.include? word[0] and cons.include? word[1] and cons.include? word[2]
    word[3..word.length] + word[0..2] + suffix
  elsif cons.include? word[0..1]
    word[2..word.length] + word[0..1] + suffix
  elsif cons.include? word[1..2]
    word[3..word.length] + word[0..2] + suffix
  elsif vowels.include? word[0]
    word + suffix
  elsif not vowels.include? word[0] and not vowels.include? word[1]
    word[2..word.length] + word[0..1] + suffix
  elsif not vowels.include? word[0]
    word[1...word.length] + word[0] + suffix
  end
end
