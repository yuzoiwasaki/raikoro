#!/usr/bin/env ruby

candidates = ((2..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)
bad_characters = [ "i", "I", "l", "L", "o", "O" ]

if !ARGV[0]
  NUM = 9
elsif ARGV[0] == "-n"
  NUM = ARGV[1].to_i
else
  puts "Invalid argument."
  exit
end

cnt = 0

while cnt < NUM

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
