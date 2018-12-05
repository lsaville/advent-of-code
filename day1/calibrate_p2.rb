input = File.read('input.txt')

sum = 0
seen = {
  0 => 'seen'
}
twice = nil

twice = input.split(/\n/).cycle do |num|
  num = num.to_i
  sum += num
  break twice = sum if seen[sum]
  seen[sum] = 'seen'
end
