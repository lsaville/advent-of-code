require 'pry'
input = File.read('input.txt')

sum = 0
seen = {
  0 => 'seen'
}
twice = nil

input.split(/\n/).cycle do |num|
  num = num.to_i
  sum += num
  if seen[sum]
    binding.pry
    return twice = sum
  else
    seen[sum] = 'seen'
  end
end
binding.pry
