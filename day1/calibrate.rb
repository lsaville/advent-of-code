require 'pry'

input = File.read('input.txt')

puts input.split(/\n/).map(&:to_i).sum
binding.pry
