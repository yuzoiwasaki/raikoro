#!/usr/bin/env ruby

candidates = ((2..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)
bad_characters = [ "i", "I", "l", "o", "O" ]

cnt = 0
while cnt < 9

flg = false
word = candidates.sample

bad_characters.each{|ch|
  flg = true if word == ch
}

unless(flg)
  print word
  cnt += 1
end

end
puts ""
