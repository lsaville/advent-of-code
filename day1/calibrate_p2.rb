input = File.read('input.txt')

sum = 0
seen = {
  0 => 'seen'
}

input.split(/\n/).cycle do |num|
  num = num.to_i
  sum += num
  break if seen[sum]
  seen[sum] = 'seen'
end

puts sum
