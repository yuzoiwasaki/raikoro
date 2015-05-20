#!/usr/bin/env ruby
require 'optparse'

candidates = ((2..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)
bad_characters = [ "i", "I", "l", "L", "o", "O" ]

OptionParser.new do |opt|
  opt.on('-n', '--number=VALUE') {|v|
    NUM = v.to_i
  }
  opt.parse!(ARGV)
end

NUM ||= 9
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
